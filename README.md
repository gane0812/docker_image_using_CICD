# **Python Webapp Deployment using Terraform, Docker, and GitHub Actions (Azure)**

This project demonstrates a complete CI/CD pipeline that builds, packages, and deploys a simple Python web application to Azure Container Instances (ACI) using Docker, Terraform, and GitHub Actions.

The deployed container is accessible on port 8080 of the container group’s public IP.

## **Project Overview**

This repository automates the entire deployment lifecycle:

**Terraform** provisions Azure infrastructure:

- Resource Group

- Azure Container Registry (ACR) to store docker image

- Azure Container Instance for running the app

**Docker** builds using comands from Dockerfile and pushes the image to Azure Container Registry.

**GitHub Actions** automates the pipeline — building the image, pushing it to ACR, and deploying the container using Terraform.

| Component          | Description                                      |
| ------------------ | ------------------------------------------------ |
| **Azure**          | Cloud provider hosting the app and registry      |
| **Terraform**      | Infrastructure as Code (IaC) for Azure resources |
| **Docker**         | Containerization of the Python web app           |
| **GitHub Actions** | CI/CD workflow for automated deployment          |
| **Python**         | Simple web app running inside the container      |
