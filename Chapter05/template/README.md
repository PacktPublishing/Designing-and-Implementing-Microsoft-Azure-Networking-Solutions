# Azure Network Engineer Book - Chapter 5

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-5%2Ftemplate%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-5%2Ftemplate%2Fazuredeploy.json)


## CoreServicesVNet (10.10.0.0/16)
* **DatabaseSubnet (10.10.2.0/24)**
  * DataVM (10.10.2.4)
* **PublicWebServiceSubnet (10.10.3.0/24)**

 
## onprem-network (10.50.0.0/16)
* **onprem-subnet-1 (10.50.1.0/24)**
  * OnPremVM (10.50.1.4)
* **onprem-subnet-2 (10.50.2.0/24)**
* **onprem-subnet-3 (10.50.3.0/24)**
* **GatewaySubnet (10.50.10.0/24)**

## Remote User PC
* 