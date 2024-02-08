# Azure terraform quick start

terraform init -upgrade
terraform plan -out main.tfplan
terraform apply main.tfplan

resource_group_name=$(terraform output -raw resource_group_name)

https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-terraform?tabs=azure-cli


In this article, you learn how to:

Create a random value for the Azure resource group name using random_pet.
Create an Azure resource group using azurerm_resource_group.
Create a virtual network (VNET) using azurerm_virtual_network.
Create a subnet using azurerm_subnet.
Create a public IP using azurerm_public_ip.
Create a network security group using azurerm_network_security_group.
Create a network interface using azurerm_network_interface.
Create an association between the network security group and the network interface using azurerm_network_interface_security_group_association.
Generate a random value for a unique storage account name using random_id.
Create a storage account for boot diagnostics using azurerm_storage_account.
Create a Linux VM using azurerm_linux_virtual_machine
Create an AzAPI resource azapi_resource.
Create an AzAPI resource to generate an SSH key pair using azapi_resource_action.
