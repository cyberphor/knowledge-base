# Resource Templates

## Get and Modify an ARM Template for an Existing Managed Disk
**Step 1.** Login to the Azure Portal.

**Step 2.** Get an ARM template for an existing managed disk.
* Resource groups
  * (your resource group)
    * Settings > Deployments > (your managed disk deployment)
      * Template > Download

**Step 3.** Extract the ARM template (`template.json`) and parameters file (`parameters.json`) from the downloaded archive. 

**Step 4.** Upload the ARM template. 
* Search for "custom deployment"
  * Deploy from a custom template
    * Select a template > Build your own template in the editor
      * Load file: `template.json`
    * Basics
      * Edit parameters
        * Load file: `parameters.json`
      * Subscription: (your subscription)
        * Resource group: (your resource group)
      * Instance details
        * Disk name: (new disk name)