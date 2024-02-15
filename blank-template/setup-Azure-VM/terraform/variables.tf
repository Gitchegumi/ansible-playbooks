variable "location" {
    description = "The location/region of the resource group"
    type = string
    default = "<location>"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type = string
    default = "<your_resource_group_name>"
}

variable "vm_name" {
    description = "The name of the virtual machine"
    type = string
    default = "<vm_name>"
}

variable "vm_size" {
    description = "The size of the virtual machine"
    type = string
    default = "<vm_size>"
}

variable "vm_image_publisher" {
    description = "The publisher of the virtual machine image"
    type = string
    default = "<publisher>"  
}

variable "vm_image_offer" {
    description = "The offer of the virtual machine image"
    type = string
    default = "<offer>"
}

variable "vm_image_sku" {
    description = "The SKU of the virtual machine image"
    type = string
    default = "<sku>"
}

variable "vm_image_version" {
    description = "The version of the virtual machine image"
    type = string
    default = "<version>"  
}

variable "vm_os_disk_storage_type" {
    description = "The storage type of the OS disk"
    type = string
    default = "<storage_type>"  
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