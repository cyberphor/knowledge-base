# Azure Storage Security
* [Update a Web App to Generate an SAS Token per Blob](#update-a-web-app-to-generate-an-sas-token-per-blob)

## Update a Web App to Generate an SAS Token per Blob
In this task, you're going to do the following:
* [Create a Storage Account and Add Blobs to It](#create-a-storage-account-and-add-blobs-to-it)
* [Add Code to An Existing Web App to Create SAS Tokens](#add-code-to-an-existing-web-app-to-create-sas-tokens)
* [Add Code to An Existing Web App to Use SAS Tokens](#add-code-to-an-existing-web-app-to-use-sas-tokens)

### Create a Storage Account and Add Blobs to It
**Step 1.** Login to the Azure Cloud Shell. 

**Step 2.** Define your variables. 
```bash
export RESOURCE_GROUP="learn-1e9382e5-98fe-4a63-972f-15f1d5f78fdf"
export STORAGE_ACCOUNT_NAME="storageaccountcyberphor"
export STORAGE_ACCOUNT_ACCESS_TIER="hot"
export STORAGE_ACCOUNT_KIND="StorageV2" # standard
export CONTAINER_NAME="patient-images"
export CONTAINER_PUBLIC_READ_ACCESS="off"
export SOURCE_FOLDER="sas"
export IMAGES="*.jpg"
```

**Step 3.** Create a storage account. 
```bash
az storage account create \
  --resource-group "${RESOURCE_GROUP}" \
  --name "${STORAGE_ACCOUNT_NAME}" \
  --access-tier "${STORAGE_ACCOUNT_ACCESS_TIER}" \
  --kind "${STORAGE_ACCOUNT_KIND}" 
```

**Step 4.** Create a container. 
```bash
az storage container create \
  --account-name "${STORAGE_ACCOUNT_NAME}" \
  --name "${CONTAINER_NAME}" \
  --public-access "${CONTAINER_PUBLIC_READ_ACCESS}"
```

**Step 5.** Download the existing web app to your Azure Cloud Shell session. The command below saves a GitHub repository using the folder name "sas." The GitHub repository includes the web app and mock patient images. 
```bash
git clone https://github.com/MicrosoftDocs/mslearn-control-access-to-azure-storage-with-sas.git sas
```

**Step 6.** Upload the patient images from your Azure Cloud Shell session to the container in your storage account. 
```bash
az storage blob upload-batch \
  --account-name "${STORAGE_ACCOUNT_NAME}" \
  --source "${SOURCE_FOLDER}" \
  --destination "${CONTAINER_NAME}" \
  --pattern "${IMAGES}"
```

**Step 7.** Get a connection string from your storage account. 
```bash
az storage account show-connection-string --name "${STORAGE_ACCOUNT_NAME}"
```

The output should be similar to below. 
```json
{
  "connectionString": "DefaultEndpointsProtocol=https;EndpointSuffix=core.windows.net;AccountName=storageaccountcyberphor;AccountKey=9ORgF5JmRnUx1E1DNuoYm9tBmd+U36xE1vkB5M6RxKzrhKCVsMM4rfYx3op1zQPpYZkazzLOI8GH+AStMcPIzg==;BlobEndpoint=https://storageaccountcyberphor.blob.core.windows.net/;FileEndpoint=https://storageaccountcyberphor.file.core.windows.net/;QueueEndpoint=https://storageaccountcyberphor.queue.core.windows.net/;TableEndpoint=https://storageaccountcyberphor.table.core.windows.net/"
}
```

**Step 8.** Open the "appsettings.json" file included in the GitHub repository.
```bash
code sas/appsettings.json
``` 

**Step 9.** Update the "appsettings.json" file with your connection string (i.e., the value of the `connectionString` returned by the previous Azure CLI command), storage account name, and account key. 
```json
{
  "Logging": {
    "LogLevel": {
      "Default": "Warning"
    }
  },
  "AllowedHosts": "*",
  "StorageAccount": {
    "ConnectionString": "DefaultEndpointsProtocol=https;EndpointSuffix=core.windows.net;AccountName=storageaccountcyberphor;AccountKey=9ORgF5JmRnUx1E1DNuoYm9tBmd+U36xE1vkB5M6RxKzrhKCVsMM4rfYx3op1zQPpYZkazzLOI8GH+AStMcPIzg==;BlobEndpoint=https://storageaccountcyberphor.blob.core.windows.net/;FileEndpoint=https://storageaccountcyberphor.file.core.windows.net/;QueueEndpoint=https://storageaccountcyberphor.queue.core.windows.net/;TableEndpoint=https://storageaccountcyberphor.table.core.windows.net",
    "Container" : "patient-images",
    "AccountName":"storageaccountcyberphor",
    "AccountKey":"9ORgF5JmRnUx1E1DNuoYm9tBmd+U36xE1vkB5M6RxKzrhKCVsMM4rfYx3op1zQPpYZkazzLOI8GH+AStMcPIzg=="
  }  
}
```

**Step 10.** Open a port within your Azure Cloud Shell session using the command below. 
```bash
curl -X POST http://localhost:8888/openPort/8000
```

The output should be similar to below. Save the URL for later use. 
```json
{"message": "Port 8000 is open", "url": "https://gateway11.northeurope.console.azure.com/n/cc-4016c848/cc-4016c848/proxy/8000/"}
```

### Add Code to An Existing Web App to Create SAS Tokens
**Step 11.** Open the `PatientRecordController.cs` file within the `sas/Controllers` folder. 
```bash
code sas/Controllers/PatientRecordController.cs
```

**Step 12.** Replace the `GET PatientRecord/patient-nnnnnn` method with the code below. The new method returns an image with a SAS token to access it. 
```cs
// GET PatientRecord/patient-nnnnnn/secure
[HttpGet("{Name}/{secure}")]
public PatientRecord Get(string name, string flag) {
    BlobClient blob = _container.GetBlobClient(name);
    return new PatientRecord { name=blob.Name, imageURI=blob.Uri.AbsoluteUri, sasToken=GetBlobSas(blob) };
}
```

**Step 13.** Append the code below under the updated method. This method generates a SAS token with a lifetime of one minute using the `BlobClient` object passed.  
```cs
// Build a SAS token for the given blob
private string GetBlobSas(BlobClient blob) {
    // Create a user SAS that only allows reading for a minute
    BlobSasBuilder sas = new BlobSasBuilder {
        BlobContainerName = blob.BlobContainerName,
        BlobName = blob.Name,
        Resource = "b",
        ExpiresOn = DateTimeOffset.UtcNow.AddMinutes(1)
    };
    // Allow read access
    sas.SetPermissions(BlobSasPermissions.Read);

    // Use the shared key to access the blob
    var storageSharedKeyCredential = new StorageSharedKeyCredential(
        _iconfiguration.GetValue<string>("StorageAccount:AccountName"),
        _iconfiguration.GetValue<string>("StorageAccount:AccountKey")
    );

    return '?' + sas.ToSasQueryParameters(storageSharedKeyCredential).ToString();
}
```

**Step 14.** Change locations back to the `sas` folder. 
```bash
cd ..
```

### Add Code to An Existing Web App to Use SAS Tokens
**Step 15.** Open the `external.cshtml` file within the `Pages` folder. 
```bash
code Pages/external.cshtml
```

**Step 16.** In the last `<script>` element, replace the current `#btn-submit` code with what's provided below. The new `#btn-submit` code changes the URL previously used in every image request to a "secure" version (it specifically adds `/secure` which was not there before).
```js
$('#btn-submit').click(function(){
    $('#result').empty();
    $.get('api/PatientRecords/' + $('#patientID').val() + '/secure', function (data) {
        var imageURL = data.imageURI + $('#sasKey').val();
        $('#result').html('<img id="patientScan" class="alert alert-success" src="' + imageURL + '" alt="patient scan" onerror="this.classList.remove(\'alert-success\'); this.classList.add(\'alert-danger\')"//>');
    }, 'json');
});
```

**Step 17.** In the same `<script>` element, add the code below between the block you just updated and the closing `</script>` tag. This `#btn-getKey` code generates an SAS token for the image requested. 
```js
$('#btn-getKey').click(function(){
    $.get('api/PatientRecords/' + $('#patientID').val() + '/secure', function (data) {
        $('#sasKey').val(data.sasToken);
    }, 'json');
});
```

**Step 18.** Run the web app from the `sas` folder. 
```bash
dotnet run
```

**Step 19.** Navigate to the URL saved earlier. 