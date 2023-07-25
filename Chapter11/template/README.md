# Azure Network Engineer Book - Chapter 11

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-11%2Ftemplate%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-11%2Ftemplate%2Fazuredeploy.json)


## What will be created
## CoreServicesVNet (10.10.0.0/16)
* **PublicWebServiceSubnet (10.10.3.0/24)**
  * WebVM (10.10.3.4)
* **AzureBastionSubnet (10.10.1.0/24)**
  * Azure Bastion Resource

## Storage Accounts
* A storage account with a blob container named **networklogs**

