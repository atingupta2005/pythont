# init terraform's Azure provider (main.tf)
terraform init

# deploy terraform infra
terraform apply -auto-approve

chmod 400 ./ssh-keys/*

ssh -i ssh-keys/terraform-azure.pem azureuser@app1-vm-0-spgsgd.eastus.cloudapp.azure.com

# destroy infra
terraform destroy -auto-approve
