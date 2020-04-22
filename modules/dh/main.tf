
resource "random_id" "runid" {
  byte_length = 2
}

module "resourcegroup" {
  source = "../../modules/resourcegroup"
  resource_group_name = format("%s%s",var.environment,random_id.runid.hex)
  location = "Central US"
}

module "iothub" {
  source = "../../modules/iothub"
  resource_group_name = module.resourcegroup.name
  iothubname = format("%s-%s-%s",var.prefix,var.environment,random_id.runid.hex)
  location = var.location
}

module "cosmosdb" {
  source = "../../modules/cosmosdb"
  resource_group_name = module.resourcegroup.name
  cosmosdb_account_name = format("%s%s%s",var.prefix,var.environment,random_id.runid.hex)
  location = var.location
}
/*
module "sqlazure" {
  source = "../../modules/sqlazure"
  resource_group_name = module.resourcegroup.name
  location = var.location
  db_name = format("%s%s%s",var.prefix,var.environment,random_id.runid.hex)
  sql_admin_username  = var.sql_admin_username
  sql_password  = var.sql_password
}*/