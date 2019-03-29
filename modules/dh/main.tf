
resource "random_id" "runid" {
  byte_length = 2
}

module "resourcegroup" {
  source = "../../modules/resourcegroup"
  resource_group_name = "${var.environment}-${random_id.runid.hex}"
  location = "Central US"
}

module "iothub" {
  source = "../../modules/iothub"
  resource_group_name = "${module.resourcegroup.name}"
  iothubname = "${var.prefix}-${var.environment}-${random_id.runid.hex}-iothub"
  location = "${var.location}"
}

module "cosmosdb" {
  source = "../../modules/cosmosdb"
  resource_group_name = "${module.resourcegroup.name}"
  cosmosdb_account_name = "${var.prefix}-${var.environment}-${random_id.runid.hex}-cosmosdb"
  location = "${var.location}"
}

module "sqlazure" {
  source = "../../modules/sqlazure"
  resource_group_name = "${module.resourcegroup.name}"
  location = "${var.location}"
  db_name = "${var.prefix}-${var.environment}-${random_id.runid.hex}-sql"
  sql_admin_username  = "${var.sql_admin_username}"
  sql_password  = "${var.sql_password}"
}