Azure Virtual Machine Deployment: Project Documentation

Introduction
In this project, I successfully deployed a Virtual Machine (VM) on Microsoft Azure, following the necessary steps to ensure its functionality and security. I used the Azure Portal and Azure CLI to perform the deployment, configure networking, set up security rules, and automate some processes. This project helped me strengthen my skills in setting up and managing Azure resources, working with networking components, and securing virtual machines. Along the way, I faced some challenges, learned from my mistakes, and refined my understanding of the process.

Step-by-Step Process
Deploying the Virtual Machine (VM)

Initially, I chose to deploy a Linux VM using the Azure Portal. I selected a basic Ubuntu 16.04 LTS image for the VM and configured it with appropriate VM sizes (Standard D2as v4). This choice was made based on the typical requirements of running lightweight applications on Azure.
I configured the VM with an admin username and SSH keys to ensure secure access, using the Azure Portal to generate SSH keys automatically.
I assigned a public IP address to the VM, allowing for remote access via SSH.
Mistakes & Learning:

Initially, I faced issues when trying to deploy the VM, specifically regarding the availability of certain VM sizes (such as Standard_D2a_v4) in specific regions like East US and West Europe. The error message “SkuNotAvailable” made me realize that some VM sizes might not be available in all regions.
From this, I learned the importance of checking resource availability in the selected region and, if necessary, choosing a different region or VM size.
Configuring Networking and Security (NSG)

To ensure proper network connectivity and security, I configured Network Security Groups (NSGs) to allow SSH traffic (port 22) for remote access to the Linux VM.
I created a virtual network (VNet) and a subnet within that network to manage the VM’s IP address and traffic flow. I also used NSG rules to restrict access to the VM, ensuring only authorized users could connect.
After setting up the public IP and NSG rules, I verified connectivity and successfully SSHed into the VM from my local machine.
Mistakes & Learning:

During the setup, I realized I forgot to add the appropriate NSG rule for SSH access initially, which caused connection issues. This was a simple but crucial step that I corrected after checking the NSG settings.
Automating Deployment with Azure CLI

To streamline future VM deployments, I used the Azure CLI to create an automated script for deploying the VM. The script included VM configurations, such as the size, image, SSH key generation, and public IP assignment.
I learned how to use Bash commands to automate processes, which significantly saved time during VM creation. The script was run without issues, and I could easily repeat the process for new VM deployments.
Mistakes & Learning:

Initially, I had trouble generating the SSH key through the CLI, as I didn’t specify the correct directory for the key generation. After a quick troubleshooting session, I figured out how to specify the correct path for the SSH key and proceeded with the deployment successfully.
Setting Up Auto-Shutdown

As a bonus feature, I implemented an auto-shutdown mechanism to help manage costs. I configured the VM to automatically shut down after a specific time (e.g., 6 PM), reducing unnecessary usage charges when the VM was not in use.
This feature was particularly useful for cost control, especially since the VM was intended for testing purposes and didn’t need to run 24/7.
Mistakes & Learning:

I initially struggled to find the option to enable auto-shutdown within the Azure Portal. After navigating through the VM settings and reviewing the options, I successfully configured the shutdown schedule.
Challenges & Solutions
VM Size Availability: The most significant challenge I faced was when specific VM sizes were not available in the selected regions. After reviewing the error messages, I understood the need to select a different region or VM size. This taught me the importance of resource availability across different Azure regions.
Networking Configuration: I initially missed some crucial steps while configuring the NSG rules, which resulted in connection issues. I quickly realized that accurate configuration of security rules is essential for successful access and secure operation.
SSH Key Configuration: When deploying the VM through Azure CLI, I encountered issues with SSH key generation. It turned out to be a minor mistake in specifying the correct file path for the key. This experience helped me better understand SSH key management in Azure.
Conclusion & What I Learned
This project was an excellent learning experience, as it provided me with a hands-on understanding of how to deploy, configure, and manage Azure Virtual Machines. Some of the key takeaways include:

The importance of choosing the right VM size and region for efficient resource management.
The need to properly configure networking and security settings (such as NSG rules) to ensure secure and reliable access.
The benefits of automation through tools like Azure CLI and how to write scripts to deploy VMs more efficiently.
Implementing cost-saving strategies, like auto-shutdown for VM instances.
While I faced some challenges along the way, each mistake served as a valuable learning opportunity. This project allowed me to deepen my understanding of Azure, which will be useful as I continue to work with cloud resources in the future.

Screenshots & Resources
Screenshots: Screenshots of the VM creation process, NSG configurations, and the CLI script are attached to this documentation for reference.

Script: The Bash/PowerShell script used to deploy the VM can be found below:
az vm create \
  --resource-group my-first-rg \
  --name myVM \
  --image Canonical:UbuntuServer:16_04-lts-gen2:16.04.202101190 \
  --admin-username azureuser \
  --generate-ssh-keys \
  --size Standard_D2a_v4 \
  --location westeurope
