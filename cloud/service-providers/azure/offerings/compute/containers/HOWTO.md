# Azure Containers

## Container Groups
Step 1 is done continuously. Steps 2 and 3 are done once. The remaining steps are done any time there's a change (they can be automated using a GitHub Actions workflow or Azure DevOps pipeline). 

**Step 1.** Develop your application and ARM template. The ARM template can define your container group and other Azure resources you need (e.g., storage). 

**Step 2.** Create an Azure resource group. 

**Step 3.** Create an Azure Container Registry (ACR). 

**Step 4.** Login to your ACR. 

**Step 5.** Push your container images to your ACR. 

**Step 6.** Create a Docker context for your ACR (it allows your local Docker daemon to manage your images and containers in Azure). 

**Step 7.** Deploy your application. 