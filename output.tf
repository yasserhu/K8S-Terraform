output "client_key" {
    value = azurerm_kubernetes_cluster.demo.kube_config.0.client_key
}

output "client_certificate" {
    value = azurerm_kubernetes_cluster.demo.kube_config.0.client_certificate
}

output "cluster_ca_certificate" {
    value = azurerm_kubernetes_cluster.demo.kube_config.0.cluster_ca_certificate
}

output "cluster_username" {
    value = azurerm_kubernetes_cluster.demo.kube_config.0.username
}

output "cluster_password" {
    value = azurerm_kubernetes_cluster.demo.kube_config.0.password
}

output "kube_config" {
    value = azurerm_kubernetes_cluster.demo.kube_config_raw
}

output "host" {
    value = azurerm_kubernetes_cluster.demo.kube_config.0.host
}

output "keyvault_id" {
    description = "Output key vault ID and Secret Name"
    value       = azurerm_key_vault.key.id
}

output "keyvault_secret" {
    description = "Output key vault secret name"
    value       = azurerm_key_vault_secret.loginpassword.name
}
