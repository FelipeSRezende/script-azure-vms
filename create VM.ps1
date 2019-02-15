#Logar na subscrição
az login -u -p # inserir usuário e senha para pular browser


#Listar resourve groups disponíveis
az group list

#cRiar um resource group
az group create --name myResourceGroupVM --location eastus

#Listar imagens de S.O.s mais populares
az vm image list --output table


#Listar imagens de S.O.s específicos
az vm image list --offer <#Nome do S.O.#> --all --output table

#Criar VM via CLI
az vm create \ --resource-group rg-lab-testes\--name vm-lab-teste01 \ --image



