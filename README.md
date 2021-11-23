# CS302-labs-main

This repo is a archive of code examples for C302-IT Solution Lifecycle Management, which goes into DevOps practices and technologies.

- `/services`, `/user-interfaces`: Git submodules that reference microservices and a frontend UI, each maintained in their own repository
- `/sql-scripts`: SQL scripts to load data into aforementioned services, for testing or staging deployments
- `/api-gateway`: Creates a Docker image that deploys a simple NGINX server that serves as an API gateway to route requests to various microservices once deployed

- `/k8s`: YAML configuration files for creating Deployment objects with accompanying Services, Ingress, and ServiceMonitors in Kubernetes.

- `/infra`: Terraform templates for deploying an EC2 instance and AWS MQ broker



