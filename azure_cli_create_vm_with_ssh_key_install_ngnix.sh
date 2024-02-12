export RESOURCE_GROUP_NAME=Regroup_2n0OSwc_CLrV2crJbn
export LOCATION=westus
export VM_NAME=myVM
export VM_IMAGE=Ubuntu2204
export ADMIN_USERNAME=azureuser
az vm create --resource-group $RESOURCE_GROUP_NAME --name $VM_NAME --image $VM_IMAGE --admin-username $ADMIN_USERNAME --generate-ssh-keys --public-ip-sku Standard
cat /home/student_10f0d4vxlp6tpzgm/.ssh/id_rsa
export IP_ADDRESS=$(az vm show --show-details --resource-group $RESOURCE_GROUP_NAME --name $VM_NAME --query publicIps --output tsv)
az vm run-command invoke --resource-group $RESOURCE_GROUP_NAME --name $VM_NAME --command-id RunShellScript --scripts "sudo apt-get update && sudo apt-get install -y nginx"
az vm open-port --port 80 --resource-group $RESOURCE_GROUP_NAME --name $VM_NAME
