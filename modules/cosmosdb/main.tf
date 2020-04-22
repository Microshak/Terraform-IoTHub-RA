##COMOS DB
resource "azurerm_cosmosdb_account" "db" {
  name                = var.cosmosdb_account_name
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level = "BoundedStaleness"
  }

  geo_location {
    location = var.location
    failover_priority = 0
  }

  # Create Cosmos DB and Collection. It requires az command
  # https://docs.microsoft.com/ja-jp/azure/cosmos-db/scripts/create-database-account-collections-cli?toc=%2fcli%2fazure%2ftoc.json

  provisioner "local-exec" {
    command = "az cosmosdb database create --name ${azurerm_cosmosdb_account.db.name} --db-name ${var.cosmosdb_account_name} --resource-group ${var.resource_group_name}"
  }
  provisioner "local-exec" {
    command = "az cosmosdb collection create --collection-name ${var.collection_name} --name ${azurerm_cosmosdb_account.db.name} --db-name ${var.cosmosdb_account_name} --resource-group ${var.resource_group_name}"
  }
 }

