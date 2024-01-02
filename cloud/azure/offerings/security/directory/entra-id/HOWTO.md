# Entra ID
* [Create an Entra ID Tenant](#create-an-entra-id-tenant)
* [Create an Entra ID Group with Dynamic Membership Using Azure Portal](#create-an-entra-id-group-with-dynamic-membership-using-azure-portal)
* [Create an Entra ID Cloud Identity Account Using Azure Portal](#create-an-entra-id-cloud-identity-account-using-azure-portal)
* [Create an Entra ID Cloud Identity Account Using Azure CLI](#create-an-entra-id-cloud-identity-account-using-azure-cli)
* [Create an Entra ID Cloud Identity Account Using Azure PowerShell](#create-an-entra-id-cloud-identity-account-using-azure-cli)
* [Create an Entra ID Guest User Account Using Azure Portal](#create-an-entra-id-cloud-identity-account-using-azure-portal)
* [Bulk Create Entra ID Guest User Accounts Using Azure PowerShell](#bulk-create-entra-id-guest-user-accounts-using-azure-powershell)
* [Update Company Branding](#update-company-branding)

## Create an Entra ID Tenant
**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for "Entra ID."

**Step 3.** Click "Overview > Manage tenants."

**Step 4.** Click "Create."

**Step 5.** Click the "Configuration" tab and set the tenant information.
* Organization name: `Evil Corp`
* Initial domain name: `evilcorp.onmicrosoft.com`

**Step 6.** Click "Create."

## Create an Entra ID Group with Dynamic Membership Using Azure Portal
**Step 1.** Login to the Azure Portal. 

**Step 2.** Click "Manage > Licenses."

**Step 3.** Click "Manage > All products."

**Step 4.** Click "Try/Buy" and activate the "Entra ID Premium P2" license. 

**Step 5.** Select the "Entra ID Premium P2" license and click "Assign."

**Step 6.** Click "Add users and groups."

**Step 7.** Assign the correct licenses to your account and other authorized administrators. 

**Step 8.** Search for "Entra ID."  

**Step 9.** Click "Manage > Groups > New group."

**Step 10.** Set the group's information. 
* Group type: Security
* Group name: Cloud Administrators
* Membership type: Dynamic User

**Step 11.** For "Dynamic user members," click "Add dynamic query" and create a rule. 
* Property: `jobTitle`
* Operator: `Equals`
* Value: `Cloud Administrator`

**Step 12.** Click "Create" to create the security group. 

## Create an Entra ID Cloud Identity Account Using Azure Portal
**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for "Entra ID."

**Step 3.** Click "Manage > Users."

**Step 4.** Click "New user > Create new user."

**Step 5.** Set their identity information. 
* Username (aka User Principal Name): `elliot.alderson@evil.corp`
* Display name: `Alderson, Elliot`

**Step 6.** Set their password information. 
* Select "Let me create the password"
* Initial password: `LongAndStrongPassphrase2024!`

**Step 7.** Set their "Usage location."

**Step 8.** Set their "Job info."
* Job title: `Cloud Administrator`
* Department: `IT`

**Step 9.** Click "Create." 

**Step 10.** Select the user and click "Manage > Assigned roles."

**Step 11.** Click "Add assignments" and select "User administrator."

## Create a Cloud Identity Account Using Azure CLI
```bash
az ad user create
```

```bash
az ad user delete
```

## Create a Cloud Identity Account Using Azure PowerShell 
```powershell
New-MgUser
```

```powershell
Remove-MgUser
```

## Create an Entra ID Guest User Account Using Azure Portal
**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for "Entra ID."

**Step 3.** Click "Manage > Users."

**Step 4.** Click "New user > Create new user."

**Step 5.** Click "Invite external user."

**Step 6.** Set their identity information. 
* Name: `Alderson, Elliot`
* Email address: `neo@thematrix.onmicrosoft.com`

**Step 7.** Set their "Usage location."

**Step 8.** Set their "Job info."
* Job title: `Cloud Administrator`
* Department: `IT`

**Step 9.** Click "Invite."

## Bulk Create Entra ID Guest User Accounts Using Azure PowerShell
```powershell
$Message = [Microsoft.Graph.PowerShell.Models.MicrosoftGraphInvitation]@{ CustomizedMessageBody = "Welcome!" }
Import-CSV invites.csv |
ForEach-Object {
    New-MgInvitation `
      -InviteRedirectUrl https://myapps.microsoft.com ` 
      -InvitedUserDisplayName $_.Name `
      -InvitedUserEmailAddress $_.InvitedUserEmailAddress `
      -InvitedUserMessageInfo $Message `
      -SendInvitationMessage 
}
```

### Update Company Branding
**Step 1.** Login to Azure Portal. 

**Step 2.** Click "Company Branding > Customize."

**Step 3.** Browse for and upload a company logo (i.e., favicon). 

**Step 4.** Browse for and upload a background image. 

**Step 5.** Click "Review + create."