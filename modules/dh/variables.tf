##############################################################################
# Variables File
# 
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "environment" {
  description = "The name of your Azure Resource Group."
  default     = "test"
}

variable "prefix" {
  description = "This prefix will be included in the name of some resources."
  default     = "dh"
}

variable "location" {
  description = "The region where the virtual network is created."
  default     = "Central US"
}

# CosmosDB

variable "sql_admin_username" {
  description = "The administrator username of the SQL Server."
  default="microshakYo"
}

variable "sql_password" {
  description = "The administrator password of the SQL Server."
  default="Microshak@2019"
}
