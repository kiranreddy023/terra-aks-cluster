resource "azurerm_resource_group" "k8s-cluster" {
  name = "k8s-cluster"
  location = "Central Australia"
}

resource "azurerm_kubernetes_cluster" "myk8scluster" {
  name = "myk8scluster"
  resource_group_name = azurerm_resource_group.k8s-cluster.name
  location = azurerm_resource_group.k8s-cluster.location
  dns_prefix = "kirank8s"
  default_node_pool {
    name = "kiranpool"
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
  output "clientCertificate" {
    value = "azurerm_kubernetes_cluster.myk8scluster.kube_config.0.client_certificate"
    sensitive = true
  }

  output "kube_config" {
  value = azurerm_kubernetes_cluster.myk8scluster.kube_config_raw
  sensitive = true
  }

