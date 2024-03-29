variable "location" {
    description = "The location/region of the resource group"
    type = string
    default = "eastus"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type = string
    default = "elucidate-capstone-rg"
}

variable "vm_name" {
    description = "The name of the virtual machine"
    type = string
    default = "elucidate-capstone-vm"
}

variable "vm_size" {
    description = "The size of the virtual machine"
    type = string
    default = "Standard_B2ms" # upgrade to Standard_NC8as_T4_v3 or Standard_NC16as_T4_v3 when allowed to
}

variable "vm_image_publisher" {
    description = "The publisher of the virtual machine image"
    type = string
    default = "canonical"  
}

variable "vm_image_offer" {
    description = "The offer of the virtual machine image"
    type = string
    default = "0001-com-ubuntu-server-jammy"
}

variable "vm_image_sku" {
    description = "The SKU of the virtual machine image"
    type = string
    default = "22_04-lts-gen2"
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