terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "PreactDK"

    workspaces {
      name = "demo-app"
    }
  }
}
# resource "random_password" "password" {
#   length           = 16
#   special          = true
#   override_special = "_%@"
# }



provider "azurerm" {
  features {}
  subscription_id = "9e0a097e-59bd-4777-9fac-c021dec90709"

}


resource "azurerm_resource_group" "rg" {
  name     = "RG_MyAPP_DemoTFCLOUD"
  location = "West Europe"

}
module "webapp" {
  source               = "app.terraform.io/PreactDK/webapp/azurerm"
  version              = "1.0.4"
  service_plan_name    = "demoappsp"
  app_name             = "myappdemobookcloudpreact"
  location             = "West Europe"
  resource_groupe_name = azurerm_resource_group.rg.name
  sp_sku               = "Standard" #"Standard"
  ftps_state           = "FtpsOnly"
}