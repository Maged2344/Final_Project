# SIMPLE PYTHON APP DEPLOYMENT USING TERRAFORM, &GCP.

A simple python web-app using [redis](https://redis.io/) for caching, Deployed on a full GKE cluster using [Terraform](https://www.terraform.io/)

## Infrastructure

building with terraform & helm.

## K8s components

Two deployment files to deploy the python application and redis service


``

- Apply the infrastructure on GCP using Terraform.

```bash
terraform init 
terraform plan
terraform apply
```

- SSH into the private instance and start deploying to your K8s cluster

- pull jenkins with helm
  ```
     helm repo add jenkins https://charts.jenkins.io
     helm repo update
     helm pull --untar jenkins/jenkins
     ```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.



# Final-Project
