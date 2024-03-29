variable "location" {
    description = "The location/region of the resource group"
    type = string
    default = "eastus"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type = string
    default = "multi-model-databases"
}

variable "vm_name" {
    description = "The name of the virtual machine"
    type = string
    default = "multimodelengg"
}

variable "vm_size" {
    description = "The size of the virtual machine"
    type = string
    default = "Standard_B2ms"
}

variable "vm_image_publisher" {
    description = "The publisher of the virtual machine image"
    type = string
    default = "Canonical"  
}

variable "vm_image_offer" {
    description = "The offer of the virtual machine image"
    type = string
    default = "0001-com-ubuntu-server-focal"
}

variable "vm_image_sku" {
    description = "The SKU of the virtual machine image"
    type = string
    default = "20_04-lts"
}

variable "vm_image_version" {
    description = "The version of the virtual machine image"
    type = string
    default = "latest"  
}

variable "vm_os_disk_storage_type" {
    description = "The storage type of the OS disk"
    type = string
    default = "Standard_LRS"  
}

variable "local_admin_username" {
    description = "The local admin username"
    type = string
    default = "clouduser"    
}

variable "local_admin_password" {
    description = "The local admin password"
    type = string
    default = "P@ssw0rd1234!"  
}

variable "laptop_public_key" {
    type = string
    default = "<your_laptop_Windows_public_key_here>"
}

variable "laptop_WSL_public_key" {
    type = string
    default = "<your_laptop_WSL_public_key_here>"
}

variable "desktop_public_key" {
    type = string
    default = "<your_desktop_Windows_public_key_here>"
}

variable "desktop_WSL_public_key" {
    type = string
    default = "<your_desktop_WSL_public_key_here>"
}