#!/bin/bash

RANDOM=$$
az group create --name myResourceGroup$RANDOM --location "West Europe"
az appservice plan create --name myAppServicePlan --resource-group myResourceGroup$RANDOM --sku S1 --is-linux
az webapp create --resource-group myResourceGroup$RANDOM --plan myAppServicePlan --name myosthhs$RANDOM --multicontainer-config-type compose --multicontainer-config-file compose-os.yml
echo "hosturl is https://myosthhs"$RANDOM".azurewebsites.net"
