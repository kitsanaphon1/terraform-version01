resource_group_name = "rg-terraform-demo"
location            = "Southeast Asia"
prefix              = "tfproj"

admin_username      = "azureuser"
public_key_path     = "/home/sooya/terraform-keys/id_rsa_ansible_final.pub"

vm_size             = "Standard_B1s"
image_publisher     = "Canonical"
image_offer         = "0001-com-ubuntu-server-focal"
image_sku           = "20_04-lts"
image_version       = "latest"

address_space       = ["10.0.0.0/16"]
subnet_prefixes     = ["10.0.1.0/24"]
