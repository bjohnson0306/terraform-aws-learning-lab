# Terraform AWS Learning Lab

This repository documents my hands-on learning with Terraform and AWS using Infrastructure as Code (IaC).  
The project focuses on clean Terraform structure, safe configuration practices, and intentional build/destroy workflows to control cloud costs.

This repo is designed to demonstrate **how I learn, structure, and explain Terraform projects**, not just that I can make resources.

---

## What This Repository Demonstrates

- Terraform initialization and provider configuration
- AWS authentication using environment variables (no secrets committed)
- Use of variables and `terraform.tfvars` (with `.example` pattern)
- Standard Terraform workflows: `init`, `plan`, `apply`, `destroy`
- Clean, readable project structure suitable for team environments
- Cost-aware infrastructure creation and teardown

---

## Tech Stack

- Terraform
- AWS
- Git & GitHub
- VS Code
- Windows (local development)

---

## Project Structure

.
├── main.tf
├── providers.tf
├── versions.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md


---

## Prerequisites

- Terraform installed
- AWS account
- AWS credentials configured via environment variables or AWS CLI
- Git

> Note: No AWS credentials or secrets are stored in this repository.

---

## How to Use This Project

Initialize Terraform:

```bash
terraform init

Format and validate configuration:

terraform fmt
terraform validate


Preview changes:

terraform plan


Apply infrastructure:

terraform apply


Destroy infrastructure when finished:

terraform destroy

Cost Control

All resources in this repository are designed to be created and destroyed intentionally.
This project is used for learning and does not require long-running infrastructure.

## Learning Progress
- [x] Terraform init & providers
- [x] Variables and tfvars
- [x] AWS S3 deployment
- [ ] S3 backend
- [ ] Terraform modules
- [ ] Remote state

## CI (GitHub Actions)
This repo uses GitHub Actions to automatically run Terraform checks on every push and pull request:
- `terraform fmt -check`
- `terraform init` (no backend)
- `terraform validate`


Disclaimer

This repository is for educational purposes and reflects an evolving learning process.


---