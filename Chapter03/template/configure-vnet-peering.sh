group="CharisTechRG-C3"
vnet1="CoreServicesVnet"
vnet2="EngineeringVnet"

# Get the id for myVirtualNetwork1
vNet1Id=$(az network vnet show --resource-group $group --name $vnet1 --query id --out tsv)

# Get the id for myVirtualNetwork2
vNet2Id=$(az network vnet show --resource-group $group --name $vnet2 --query id --out tsv)

# Configure CoreServicesVnet to EngineeringVnet peering
az network vnet peering create --name $vnet1-to-$vnet2 --resource-group $group --vnet-name $vnet1 --remote-vnet $vNet2Id --allow-vnet-access

# Configure EngineeringVnet to CoreServicesVnet peering
az network vnet peering create --name $vnet2-to-$vnet1 --resource-group $group --vnet-name $vnet2 --remote-vnet $vNet1Id --allow-vnet-access

# Examine the VNet peering state
az network vnet peering show --name $vnet1-to-$vnet2 --resource-group $group --vnet-name $vnet1 --query peeringState
