# Azure Network Engineer Book - Chapter 3

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-3%2Ftemplate%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdavidokeyode%2FAZ-700%2Fmain%2Fchapter-3%2Ftemplate%2Fazuredeploy.json)


## CoreServicesVNet (10.10.0.0/16)
* **DatabaseSubnet (10.10.2.0/24)**
  * DataVM (10.10.2.4)
* **PublicWebServiceSubnet (10.10.3.0/24)**
  * WebVM (10.10.3.4)
* **NvaSubnet (10.10.11.0/24)**
  * NvaVM (10.10.11.4)
 
## EngineeringVNet (10.20.0.0/16)
* **EngSubnet1 (10.20.1.0/24)**
  * EngVM (10.20.1.4)
* **EngSubnet2 (10.20.2.0/24)**

