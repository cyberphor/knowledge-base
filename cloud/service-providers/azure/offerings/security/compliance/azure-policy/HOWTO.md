# Azure Policy
This HOWTO demonstrates preventing the creation of a non-compliant resource versus modifying the creation of a resource to ensure compliance. 
* [Create a Tag](#create-a-tag)
* [Enforce a Built-In Policy Definition](#enforce-tagging-requirements)
* [Automatically Apply Tags](#automatically-apply-tags)

## Create a Tag 
**Step 1.** Login to the Azure Portal.

**Step 2.** Click "Resource Groups."

**Step 3.** Select a resource group.

**Step 4.** Click "Tags" and create a new tag. 
* Name: `role`
* Value: `infrastructure`

## Enforce Tagging Requirements
**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for "Policy."

**Step 3.** Click "Authoring > Definitions" and select the "Require a tag and its value on resources" Policy Definition.

**Step 4.** Click "Assign" and configure the policy assignment. 
* Scope
  * Subscription: (your subscription)
  * Resource Group: (your resource group)
* Assignment name: `Require the Infrastructure Tag`
* Parameters
  * Tag Name: `role`
  * Tag Value: `infrastructure`

## Automatically Apply Tags
**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for "Policy."

**Step 3.** Click "Authoring > Definitions" and select the "Inherit a tag from the resource group if missing" Policy Definition.

**Step 4.** Click "Assign" and configure the policy assignment. 
* Scope
  * Subscription: (your subscription)
  * Resource Group: (your resource group)
* Parameters
  * Tag Name: `role`
* Remediation
  * Create a remediation task: checked