##############################################################################
# Variables File
# 
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "iothubname" {
  description = "The name of the iothub"
}

variable "resource_group_name"{
  description="the name of the resource group"
}

variable "location" {
  description = "The region where the virtual network is created."
}