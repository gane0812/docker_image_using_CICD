

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.48.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "d142c4c7-733e-4ee6-9bb4-bcbe829e13c2"
}

terraform {
  backend "azurerm" {
    
  }
}

resource "azurerm_resource_group" "container_Rg" {
  name = "containerRg"
  location = "UK south"
}

resource "azurerm_container_registry" "acr" {
name = "gane0812"
resource_group_name = azurerm_resource_group.container_Rg.name
location = azurerm_resource_group.container_Rg.location
sku = "Basic"
admin_enabled = "true"
}

resource "azurerm_container_group" "containerInstance" {
  name = "aci"
  resource_group_name = azurerm_resource_group.container_Rg.name
  location = azurerm_resource_group.container_Rg.location
  os_type = "Linux"
  container {
    name = "container"
    image = "${azurerm_container_registry.acr.login_server}/repo/container:v1"
    cpu = "0.5"
    memory = "0.5"

    ports {
      port = 8080
      protocol = "TCP"
    }
  }
}