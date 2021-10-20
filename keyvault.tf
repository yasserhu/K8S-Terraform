
resource    azurerm_key_vault "key" {
    name = "${azurerm_resource_group.aks.name}-kv"
    location = azurerm_resource_group.aks.location
    resource_group_name = azurerm_resource_group.aks.name
    tenant_id = var.tenant_id
    enabled_for_deployment = true
    enabled_for_template_deployment = true
    enabled_for_disk_encryption = true
    sku_name = lower(var.keyvault_sku)
    access_policy {
        tenant_id = var.tenant_id
        object_id = var.keyvault_object_id

        certificate_permissions = [
        "create",
        "delete",
        "deleteissuers",
        "get",
        "getissuers",
        "import",
        "list",
        "listissuers",
        "managecontacts",
        "manageissuers",
        "setissuers",
        "update",
        ]

        key_permissions = [
        "backup",
        "create",
        "decrypt",
        "delete",
        "encrypt",
        "get",
        "import",
        "list",
        "purge",
        "recover",
        "restore",
        "sign",
        "unwrapKey",
        "update",
        "verify",
        "wrapKey",
        ]

        secret_permissions = [
        "backup",
        "delete",
        "get",
        "list",
        "purge",
        "recover",
        "restore",
        "set",
        ]
    }
}


resource azurerm_key_vault_secret "loginpassword" {
    name            = "loginpassord"
    value           = var.login_password
    key_vault_id    = azurerm_key_vault.key.id
}