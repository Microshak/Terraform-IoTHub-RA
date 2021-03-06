##############################################################################
# Variables File
# 
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "resource_group_name"{
  description="The name of the resource group"
}

variable "location" {
  description = "The region where the virtual network is created."
}

# CosmosDB
variable "cosmosdb_account_name"{
  description = "The name of the cosmosdb account"
}

variable "collection_name"{
  description = "The name of the cosmosdb collection"
  default = "events"
}