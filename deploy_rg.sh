# Azure Batch Script for deploying a ARM sample Template

#Login and set subcription tenant
echo Login for gid subscription
az login

# Create example Resource Group
echo "Create Resource Group for testing"
az group create -l northeurope -n ExampleGroup

# Deploy the ARM Template
echo "Deploy the ARM Template"
az deployment group create --name ExampleDeployment --resource-group ExampleGroup --template-uri https://raw.githubusercontent.com/nik879/azterac/main/template.json  --parameters parameters.json 