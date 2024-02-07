DevsecOps project: Deploying a Three-Tier web Application Infrastructure on AWS EKS using Terraform, AWS EKS, ArgoCD, Jenkins, Prometheus etc.

This repository hosts the implementation of a Three-Tier Web App using ReactJS, NodeJS, and MongoDB, deployed on AWS EKS. The project covers a wide range of tools and practices for a robust and scalable DevOps setup.

Application Code
The `Application-Code` directory contains the source code for the Three-Tier Web Application.

Jenkins Pipeline Code
In the `Jenkins-Pipeline-Code` directory, you'll find Jenkins pipeline scripts. These scripts automate the CI/CD process, ensuring smooth integration and deployment of the application.

Jenkins Server Terraform
The `Jenkins-Server-TF` directory contains Terraform scripts for setting up the Jenkins Server on AWS using Infrastructure as Code.

Kubernetes Manifests Files
The `Kubernetes-Manifests-Files` directory holds Kubernetes manifests for deploying the application on AWS EKS.

Tools Explored:
- Terraform & AWS CLI for AWS infrastructure
- Jenkins, Sonarqube, Terraform, Kubectl, and more for CI/CD setup
- Helm, Prometheus, and Grafana for Monitoring
- ArgoCD for GitOps practices

Overview:
- IAM User setup & Terraform for IaC
- Jenkins deployment with AWS integration
- EKS Cluster creation & Load Balancer configuration
- Private ECR repositories for secure image management
- Helm charts for monitoring setup
- GitOps with ArgoCD

Getting Started
To get started with this project, refer to [this post]()
