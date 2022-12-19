output "computer_vision_id" {
    description = "The ID of the Cognitive Service Account."
    value       = azurerm_cognitive_account.computer_vision_service.id
}

output "computer_vision_endpoint" {
    description = "The endpoint used to connect to the Cognitive Service Account."
    value       = azurerm_cognitive_account.computer_vision_service.endpoint
}

output "computer_vision_primary_access_key" {
    description = "A primary access key which can be used to connect to the Cognitive Service Account."
    value       =  azurerm_cognitive_account.computer_vision_service.primary_access_key
    sensitive   = true
}

output "computer_vision_secondary_access_key" {
    description = "The secondary access key which can be used to connect to the Cognitive Service Account."
    value       = azurerm_cognitive_account.computer_vision_service.secondary_access_key
    sensitive   = true
}