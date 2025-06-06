variable "resource_group_name" {
  type        = string
  description = "ชื่อของ Azure Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "prefix" {
  type        = string
  description = "Prefix สำหรับตั้งชื่อทรัพยากร"
}

variable "admin_username" {
  type        = string
  description = "ชื่อ SSH user ที่ใช้ login เข้า VM"
}

variable "public_key_path" {
  type        = string
  description = "Path ไปยังไฟล์ .pub ของ SSH Key"
}

variable "vm_size" {
  type        = string
  description = "ขนาด VM เช่น Standard_B1s"
}

variable "image_publisher" {
  type        = string
}

variable "image_offer" {
  type        = string
}

variable "image_sku" {
  type        = string
}

variable "image_version" {
  type        = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_prefixes" {
  type = list(string)
}
