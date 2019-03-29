
module "prod_dh" {
  source = "../../modules/dh"
  environment = "prod"
  sql_admin_username  = "${var.sql_admin_username}"
  sql_password  = "${var.sql_password}"
}