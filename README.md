# Secure DynamoDB on AWS – DevSecOps Infrastructure Project

**A modern, production-ready infrastructure to securely deploy and monitor a NoSQL database using AWS services, Infrastructure as Code (IaC), and CI/CD best practices.**


# Project Summary

This project replicates and improves upon a prior IBM Cloudant security setup by implementing a **fully secured, observable, and automated AWS infrastructure** using **Amazon DynamoDB** and a full DevSecOps stack.

Designed to be **auditable, scalable, and compliant**, this project is ideal for production-grade deployments and technical demonstrations.


#  Architecture Overview

[Architecture Diagram](diagram.png)

Key Components:

| Service               | Purpose                                        |
|-----------------------|------------------------------------------------|
| **DynamoDB**          | Managed NoSQL database (fully encrypted)       |
| **KMS**               | Encryption at rest with automatic key rotation |
| **IAM**               | Role-based access control                      |
| **S3**                | Secure log storage with encryption & versioning |
| **CloudTrail**        | Logs all API events to S3                      |
| **Config**            | Continuous compliance monitoring               |
| **GuardDuty**         | Threat detection engine                        |
| **CloudWatch**        | Logs, metrics & alerts                         |
| **GitHub Actions**    | CI/CD pipeline for Terraform automation        |

# Key Features

- End-to-end encryption with **KMS (AES-256)**  
- IAM with **least privilege policies**  
- Real-time monitoring and alerts with **CloudWatch**  
- Full visibility of events via **CloudTrail**  
- Infrastructure drift detection via **AWS Config**  
- **GuardDuty** active with no critical findings  
- Logs stored securely in **S3 with lifecycle rules**  
- Fully automated deployment via **Terraform + GitHub Actions**  
- Included **compliance scan report** (`scan_report.json`)

# Quick Start

# Prerequisites

-  AWS account with appropriate permissions  
-  [Terraform](https://developer.hashicorp.com/terraform/downloads)  
-  [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) configured  
-  GitHub repository secrets for CI/CD:  
- `AWS_ACCESS_KEY_ID`  
- `AWS_SECRET_ACCESS_KEY`  

# Deployment

# Clone the repository
**git clone https://github.com/your-username/secure-dynamodb-aws.git**
cd secure-dynamodb-aws/infrastructure

# Initialize and deploy with Terraform
terraform init
terraform plan
terraform apply

#🛡 Security & Compliance Summary

| Category             | Status     | Details                           |
| -------------------- | ---------- | --------------------------------- |
| Data Encryption   | Enabled  | KMS encryption on DynamoDB and S3 |
| IAM Security      | Enforced | Least privilege roles only        |
| Logging & Audits  | Active   | CloudTrail logs stored in S3      |
| Compliance Checks | Passed   | AWS Config rules enabled          |
| Threat Detection | Active   | GuardDuty enabled, no findings    |
| HTTPS Only        | Enforced | Bucket policy denies HTTP access  |

 See [SECURITY.md](./SECURITY.md) for full policies.

# Example Compliance Report

The file [`scan_report.json`](./scan_report.json) includes a simulated result from a real-world compliance scan: encryption status, IAM review, threat detection, logging, and monitoring—all passing.

# Reusability

This project is designed to be **easily forked and reused**:

* Replace resource names in `variables.tf`
* Adjust roles or policies for your environment
* Use GitHub Actions out-of-the-box for CI/CD

# Use Cases

* DevSecOps portfolio showcase
* Internal security reference architecture
* Production-grade infrastructure blueprint
* Educational cloud security lab
  
# Author

👤 Your Name – Solution architect
🔗 [LinkedIn](https://linkedin.com/in/kevin-maruis-kamdem) • [GitHub](https://github.com/kevinmaruiskamdem)

## 🏷️ Tags

`#AWS` `#DynamoDB` `#Terraform` `#DevSecOps` `#InfrastructureAsCode` `#CloudSecurity` `#CloudTrail` `#GitHubActions` `#CI/CD` `#KMS
