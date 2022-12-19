variable "create_resource_group" {
  type        = bool
  description = "(Required) Specifies if the resource group must be created or not."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = { "environment" : "test", "owner" : "ntt" }
}

variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created."
}

variable "sku_name" {
    type        = string
    description = "(Required) Specifies the SKU Name for this Cognitive Service Account."
}

variable "public_network_access_enabled" {
  type        = bool
  description = "(Optional) Whether public network access is allowed for the Cognitive Account."
  default     = true
}