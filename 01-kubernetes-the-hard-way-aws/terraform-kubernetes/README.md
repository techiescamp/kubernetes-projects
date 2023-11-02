# Kubernetes Infrastructure Provisioning using Terraform

#### K8S Infrastructure Provisioning

cd into the `environments/dev/k8s` directory and run the following commands:

1. Init Terraform in the directory `environments/dev/k8s`

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../../vars/dev/k8s.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../../vars/dev/k8s.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../../vars/dev/k8s.tfvars
