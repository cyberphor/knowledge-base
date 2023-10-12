# Fecth the exiting web app created in Task 2
#
# Data sources allow data to be fetched or computed for use elsewhere in Terraform configuration.
# Use of data sources allows a Terraform configuration to make use of information defined outside of Terraform,
# or defined by another separate Terraform configuration.
# For example, in Task 2 you have defined and provisioned a web app per the autoscale.tf.
#
# Please refer to https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app
data "azurerm_linux_function_app" "main" {
  name                = var.web_app_name
  resource_group_name = var.resource_group_name
}

# Require provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.22.0"
    }
  }
}

# Configure the provider
provider "azurerm" {
  features {}
}

# Create an Application Insights resource
resource "azurerm_application_insights" "main" {
  name = "tf_app_insights"
  # create the resource within the same resource group and the location as the web app
  location            = data.azurerm_linux_function_app.main.location
  resource_group_name = data.azurerm_linux_function_app.main.resource_group_name
  application_type    = "web"
}

# Set up a web test in the Application Insights for the web app
# Hint: You can find sample configurations at:
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights_web_test
resource "azurerm_application_insights_web_test" "main" {
  name = "tf_web_test"
  # create the resource within the same resource group and the location as the web app
  location            = data.azurerm_linux_function_app.main.location
  resource_group_name = data.azurerm_linux_function_app.main.resource_group_name

  # TODO: Specify the application_insights_id parameter as the ID of the Application Insights defined above
  # i.e., the id of "azurerm_application_insights" "main"
  application_insights_id = azurerm_application_insights.main.id
  kind                    = "ping"

  # TODO: Set the frequecy (in seconds) so that this test would run in each 5 minutes.
  frequency = 300

  # TODO: Set a timeout (in seconds) so that requests would be regarded as failed if no response is received within 1 minute.
  timeout       = 60
  enabled       = true
  geo_locations = ["us-tx-sn1-azr", "us-il-ch1-azr", "apac-sg-sin-azr", "apac-hk-hkn-azr", "us-ca-sjc-azr"]

  # An XML configuration specification for a WebTest.
  # The example is provided and you do not have to author it on your own.
  configuration = <<XML
<WebTest Name="WebTest1" Id="ABD48585-0831-40CB-9069-682EA6BB3583" Enabled="True" CssProjectStructure="" CssIteration="" Timeout="0" WorkItemIds="" xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010" Description="" CredentialUserName="" CredentialPassword="" PreAuthenticate="True" Proxy="default" StopOnError="False" RecordedResultFile="" ResultsLocale="">
  <Items>
    <Request Method="GET" Guid="a5f10126-e4cd-570d-961c-cea43999a200" Version="1.1" Url="http://${data.azurerm_linux_function_app.main.name}.azurewebsites.net" ThinkTime="0" Timeout="300" ParseDependentRequests="True" FollowRedirects="True" RecordResult="True" Cache="False" ResponseTimeGoal="0" Encoding="utf-8" ExpectedHttpStatusCode="200" ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="False" />
  </Items>
</WebTest>
XML
}

# Create an action group for email notification
# Refer to https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_action_group
resource "azurerm_monitor_action_group" "main" {
  name = "tf_action_group"
  # create the resource within the same resource group as the web app
  resource_group_name = data.azurerm_linux_function_app.main.resource_group_name
  short_name          = "tf_act"

  # TODO: Provide a name and an email address within the email_receiver block.
  email_receiver {
    name          = "Victor Fernandez III"
    email_address = "goober@dev.edu"
  }
}

# Create a metric alert that get triggered by the result of the availability test
resource "azurerm_monitor_metric_alert" "main" {
  name = "tf_metric_alert"
  # create the resource within the same resource group as the web app
  resource_group_name = data.azurerm_linux_function_app.main.resource_group_name
  scopes = [
  azurerm_application_insights.main.id]
  description = "This is a metric alert configured by Terraform to check the result of availability test."
  enabled     = true

  # TODO: Complete the criteria block so that the alert would trigger actions when:
  # the average successful availability test percentage is less than 95.
  # Refer to the criteria block in https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert
  criteria {
    metric_namespace = "microsoft.insights/components"
    metric_name      = "availabilityResults/availabilityPercentage"
    aggregation      = "Average"
    operator         = "LessThan"
    threshold        = 95
  }

  # TODO: Complete the action block to associate the alert with the action group you
  # configured above by specifying the action_group_id
  # i.e., the id of "azurerm_monitor_action_group" "main"
  # Refer to the action block in https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert
  action {
    action_group_id = azurerm_monitor_action_group.main.id
  }
}