

# Variables
RESOURCE_GROUP="my-first-rg"
VM_NAME="linuxvm"
IMAGE="UbuntuLTS"
LOCATION="South India"
VM_SIZE="Standard_B1s"

# Create Resource Group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create Virtual Machine
az vm create \
  --resource-group $RESOURCE_GROUP \
  --name $VM_NAME \
  --image $IMAGE \
  --size $VM_SIZE \
  --admin-username azureuser \
  --generate-ssh-keys

# Open SSH port in Network Security Group
az vm open-port --resource-group $RESOURCE_GROUP --name $VM_NAME --port 22
