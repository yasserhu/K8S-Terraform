variable tenant_id {
    description = "AAD tenant ID"
    type        = string
    default     = "768d47ff-1cd2-4b95-9afa-af6a60507589"
}
variable keyvault_retention_days {
    type        = number
    default     = 90
    description = "Number of days key vault is retained once it is soft deleted, The value should be between 7 and 90"
    /*block {
        value = <<EOT
        Number of days key vault is retained once it is soft deleted
        The value should be between 7 and 90
        EOT
        }*/
    validation  {
        condition = ceil(var.keyvault_retention_days) >= 7 && ceil(var.keyvault_retention_days) <= 90
        error_message = "Number of days key vault is retained once it is soft deleted, The value should be between 7 and 90." 
        /* block {
        value = <<EOT 
        Number of days key vault is retained once it is soft deleted
        The value should be between 7 and 90
        EOT
        }*/
    }
}
variable keyvault_sku {
    type        = string
    description = "Keyvault SKU can be Standard or Premium"
    default     = "Standard"
}
variable keyvault_object_id {
    description = "Object ID for Key Vault Access Policy"
    type        = string
    default     = "215ee829-0ee7-46f9-bd8f-a2a03a84fcec"
}
variable loging_username {
    type        = string
    description = "login user name"
}
variable login_password {
    type        = string
    description = "Loging password must be at least 10 characters long, one number, and two special characters."
    sensitive   = true
    /* block {
    value = <<EOT
    Loging password must be at lease 10 characters long
    one number
    two special characters
    EOT
    }*/
}
variable location {
    description = "The location of the AKS Cluster solution."
    type        = string
    default     = "Canada Central"
}
variable resource_group_name {
    description = "The name of the Azure Resource Group."
    type        = string
    default     = "demo-aks"
}
variable log_analytics_workspace_name {
    description = "The name of the Log Analytics workspace."
    type        = string
    default     = "aksmonitor"
}
# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    description = "The location of the Log Analytics workspace."
    type        = string
    default     = "Canada Central"
}
# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    description = "The pricing SKU of the Log Analytics workspace."
    type        = string
    default     = "PerGB2018"
}
variable aks_cluster_name {
    description = "The name of the AKS cluster resource."
    type        = string
    default     = "demoCluster"
}
variable "public_ssh_key_path" {
    description = "The Path at which your Public SSH Key is located. Defaults to ~/.ssh/id_rsa.pub"
    type        = string
    default     = "~/.ssh/id_rsa.pub"
}