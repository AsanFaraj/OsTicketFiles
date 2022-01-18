$random = $args[0]
az group create --name myResourceGroup$random --location "West Europe"
az appservice plan create --name myAppServicePlan --resource-group myResourceGroup$random --sku S1 --is-linux
az webapp create --resource-group myResourceGroup$random --plan myAppServicePlan --name myosthhs$random --multicontainer-config-type compose --multicontainer-config-file compose-os.yml
echo "hosturl is https://myosthhs$random.azurewebsites.net"
