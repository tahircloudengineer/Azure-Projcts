az vm create \
  --resource-group my-first-rg \
  --name myVM \
  --image Canonical:UbuntuServer:16_04-lts-gen2:16.04.202101190 \
  --admin-username azureuser \
  --generate-ssh-keys \
  --size Standard_D2a_v4 \
  --location westeurope
