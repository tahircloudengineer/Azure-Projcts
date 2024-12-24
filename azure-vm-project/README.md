# Azure VM Project

This project demonstrates the process of creating and configuring a Virtual Machine (VM) in Microsoft Azure. It includes step-by-step instructions and the necessary configurations to set up a VM, access it securely, and use it effectively.

## Project Goals
- Understand the basics of Azure VM creation.
- Configure networking components such as NSG, Public IP, and VNet.
- Enable SSH/RDP access and test connectivity.
- Manage VM resources and integrate best practices.

## Key Tasks Completed
1. Resource Group Creation  
2. Virtual Machine Deployment  
3. Networking Configuration  
4. Access Configuration  
5. Monitoring and Cleanup  

## Commands Used
1. Create Resource Group:
   ```bash
   az group create --name MyRG --location southafricanorth
az vm create \
    --resource-group MyRG \
    --name myvm \
    --image UbuntuLTS \
    --size Standard_B1s \
    --generate-ssh-keys
az vm open-port --resource-group MyRG --name myvm --port 22
az vm open-port --resource-group MyRG --name myvm --port 3389
az group delete --name MyRG --no-wait --yes
az group delete --name MyRG --no-wait --yes


### **Step 4: Save the File**
After pasting the content, save the file:

1. If you're using `nano`:
   - Press `Ctrl + O`, then hit `Enter` to save.
   - Press `Ctrl + X` to exit.

---

### **Step 5: Add the File to Git**
Run the following commands to track and commit the file:

1. Add the `README.md` file:
   ```bash
   git add README.md

git commit -m "Added README for Azure VM Project"

#Azure VM Project
## Screenshots

### Screenshot 1: VM Deployment Overview
![VM Deployment Overview](screenshots/Screenshot1.png)

### Screenshot 2: VM Configuration
![VM Configuration](screenshots/Screenshot2.png)
