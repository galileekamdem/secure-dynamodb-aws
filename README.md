# 🔐 Secure DynamoDB on AWS – DevSecOps Cloud Project

## 🧭 Objectif du projet

Ce projet a pour but de **remplacer IBM Cloudant** par une solution **AWS moderne, sécurisée et automatisée**, en exploitant les meilleures pratiques **DevSecOps**, la **surveillance cloud**, le **chiffrement**, et une **infrastructure as code (IaC)** robuste.

Le tout est présenté comme un projet GitHub professionnel, duplicable, et prêt à démontrer vos compétences cloud dans un portfolio ou lors d’un entretien technique.


## 🏗️ Architecture AWS

[Architecture Diagram](diagram.png)

Composants clés :

- **Amazon DynamoDB** : Base de données NoSQL entièrement managée.
- **AWS KMS** : Chiffrement au repos des données.
- **IAM** : Contrôle des accès via politiques de moindre privilège.
- **Amazon S3** : Stockage sécurisé des logs et résultats.
- **CloudTrail** : Journalisation des actions utilisateur.
- **AWS Config** : Surveillance de la conformité.
- **GuardDuty** : Détection d’activités malveillantes.
- **CloudWatch** : Monitoring et alertes.
- **GitHub Actions** : Pipeline CI/CD pour déploiement Terraform.


# Fonctionnalités principales

- Chiffrement complet des données (KMS)  
- IAM avec politiques restreintes  
- Monitoring + alertes CloudWatch  
- Journalisation CloudTrail → S3 sécurisé  
- Analyse de conformité automatique (AWS Config)  
- Détection de menaces (GuardDuty)  
- Déploiement Terraform automatisé via GitHub Actions  
- Exemple de rapport de scan (`scan_report.json`)  



##  Prérequis

-  Un compte AWS actif avec droits suffisants
-  Terraform installé (`>= 1.5`)
-  GitHub + GitHub CLI pour CI/CD
-  AWS CLI configuré (`aws configure`)

---

## Déploiement rapide

# Cloner le repo
git clone https://github.com/tonpseudo/secure-dynamodb-aws.git
cd secure-dynamodb-aws

# Initialiser Terraform
cd infrastructure
terraform init

# Visualiser le plan
terraform plan

# Appliquer le projet
terraform apply
