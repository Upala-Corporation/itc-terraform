# itc-terraform
Terraform Repo for ITC

# Set the variables
Important ones are the region, ssh keys, AMI, VPC CIDR. Change them in `terraform.tfvars` file.

# Apply
`terraform plan -out /tmp/terraform.plan`

`terraform apply /tmp/terraform.plan`
