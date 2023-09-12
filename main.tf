resource "azurerm_resource_group" "k8s-cluster-2" {
  name = "k8s-cluster-2"
  location = "Australia Central"
}

resource "azurerm_kubernetes_cluster" "myk8scluster2" {
  name = "myk8scluster2"
  resource_group_name = azurerm_resource_group.k8s-cluster-2.name
  location = azurerm_resource_group.k8s-cluster-2.location
  dns_prefix = "kirank8s1"
  default_node_pool {
    name = "kiranpool2"
    node_count = 1
    vm_size = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}
  
