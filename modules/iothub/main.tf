
resource "azurerm_iothub" "iothub" {
  name                = var.iothubname
  resource_group_name = var.resource_group_name
  location            = var.location
  sku {
    name = "S1"
    capacity = "1"
  }

provisioner "local-exec" {
    command = "az iot hub device-identity create -n ${var.iothubname} -d testdevice > testdevice.json"
  }
}
