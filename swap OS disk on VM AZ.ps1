# Get the VM
$vm = Get-AzureRmVm -ResourceGroupName rg-lab-testes -Name vm-lab-teste02

# Make sure the VM is stopped\deallocated
Stop-AzureRmVM -ResourceGroupName rg-lab-testes -Name $vm.Name -Force

# Get the new disk that you want to swap in
$disk = Get-AzureRmDisk -ResourceGroupName rg-lab-testes -Name vm-lab-teste02-snap

# Set the VM configuration to point to the new disk
Set-AzureRmVMOSDisk -VM $vm -ManagedDiskId $disk.Id -Name $disk.Name

# Update the VM with the new OS disk
Update-AzureRmVM -ResourceGroupName myResourceGroup -VM $vm

# Start the VM
Start-AzureRmVM -Name $vm.Name -ResourceGroupName myResourceGroup
Connect-AzAccount



#Azure CLI (IT WORKS!)
az vm update --resource-group rg-lab-testes -n vm-lab-teste02 --os-disk /subscriptions/e3454697-f8ad-4681-8b6d-717c25d12e41/resourceGroups/rg-lab-testes/providers/Microsoft.Compute/disks/vm-lab-teste02-snap