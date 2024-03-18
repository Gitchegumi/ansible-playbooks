variable "location" {
    description = "The location/region of the resource group"
    type = string
    default = "eastus"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type = string
    default = "cloud-native-week-3"
}

variable "vm_name" {
    description = "The name of the virtual machine"
    type = string
    default = "cloud-native-vm"
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
    default = "1qaz2wsx#EDC$RFV"  
}