##############################################################################
# Variables File
# 
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "environment" {
  description = "The name of your Azure Resource Group."
  default     = "prod"
}

variable "sql_admin_username" {
  description = "The administrator username of the SQL Server."
  default="Microshak2019"
}

variable "sql_password" {
  description = "The administrator password of the SQL Server."
  default="L[dd>jsfsdfs3453#$^&"
}
