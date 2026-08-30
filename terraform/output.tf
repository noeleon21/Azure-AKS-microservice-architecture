output "resource_group_name" {
  value = azurerm_resource_group.aks.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.aks.name
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "aks_hostname" {
  value     = azurerm_kubernetes_cluster.aks.fqdn
  sensitive = true
}

output "aks_kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}