terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id   = "1912471a-f4f6-4765-95f9-3e0935b0e601"
  tenant_id         = "2de7e81d-5cae-4408-b007-2b1f0082558c"
  client_id         = "d38c2aa8-1767-4ebc-8efc-15156ef72922"
  client_secret     = "GO38Q~hju8sZTnlXryQzYRjS_T43wLVwCr7XGbIO"
}