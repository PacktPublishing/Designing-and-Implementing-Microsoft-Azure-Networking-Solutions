# Azure Network Engineer Book - Chapter 7 - Exercise 1

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-7%2Ftemplate%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-7%2Ftemplate%2Fazuredeploy.json)


## CoreServicesVNet (10.10.0.0/16)
* **PublicWebServiceSubnet (10.10.3.0/24)**
  * WebVM (10.10.3.4)
 
## EngineeringVNet (10.20.0.0/16)
* **EngSubnet1 (10.20.1.0/24)**
  * EngVM (10.20.1.4)
* **EngSubnet2 (10.20.2.0/24)**

## onprem-network (10.30.0.0/16)
* **onprem-subnet-1 (10.30.1.0/24)**
  * OnPremVM (10.30.1.4)
* **GatewaySubnet (10.30.10.0/24)**

## Remote User PC Network (10.40.0.0/16)
* **RemotePC (10.40.1.4)**


# Azure Network Engineer Book - Chapter 7 - Exercise 3

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-7%2Ftemplate%2Fazuredeploy-onpremises.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-7%2Ftemplate%2Fazuredeploy-onpremises.json)