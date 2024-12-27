# Azure Virtual Network and VM Deployment

This project demonstrates the creation and configuration of an Azure Virtual Network (VNet) with subnets, and the deployment of Virtual Machines (VMs) to understand Azure networking concepts.

## **Objective**
- Learn how to set up a Virtual Network in Azure.
- Configure multiple subnets for network segmentation.
- Deploy and connect Virtual Machines in different subnets.
- Implement and test Network Security Groups (NSGs) to control traffic.

## **Key Features**
- **Virtual Network (VNet):** Custom address space of `10.0.0.0/24`.
- **Subnets:** Two subnets created:
  - Subnet1: `10.0.0.0/25`
  - Subnet2: `10.0.0.128/25`
- **Virtual Machines (VMs):** Deployed VMs to test connectivity and isolation.
- **Network Security Groups (NSGs):** Configured rules to allow/deny traffic.

## **Steps Followed**
1. Created a Virtual Network with address space `10.0.0.0/24`.
2. Defined and configured subnets:
   - Subnet1 (`10.0.0.0/25`)
   - Subnet2 (`10.0.0.128/25`)
3. Deployed a Windows Server VM in Subnet1.
4. Configured NSG rules to test traffic control.
5. Verified connectivity between VMs in different subnets.

## **Skills Demonstrated**
- Azure Networking: VNets, Subnets, and NSGs.
- VM Deployment and Testing.
- Network Traffic Segmentation and Isolation.

## **Future Improvements**
- Add detailed documentation for each step.
- Include scripts for automation using Azure CLI or PowerShell.
- Add diagrams and screenshots for better understanding.

## **Getting Started**
This repository will be updated with:
- Configuration files for the Azure resources.
- Scripts for automated deployment.
- Troubleshooting tips and FAQs.

## **Contact**
For any questions or feedback, feel free to reach out at [GitHub Issues](https://github.com/tahircloudengineer/Azure-Projcts/issues).
