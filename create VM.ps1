#Logar na subscrição
az login  # inserir usuário e senha para pular browser


#Listar resource groups disponíveis
az group list

#cRiar um resource group
az group create --name myResourceGroupVM --location eastus

#Listar imagens de S.O.s mais populares
az vm image list --output table


#Listar imagens de S.O.s específicos
az vm image list --offer <#Nome do S.O.#> --all --output table

#Criar VM via CLI
az vm create -g $rg  -n $vmnewname  -l $location


