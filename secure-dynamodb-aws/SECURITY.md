# 🔐 Politique de sécurité – Secure DynamoDB on AWS

Ce fichier décrit les mesures de sécurité mises en œuvre dans ce projet afin d’assurer la protection des données, la traçabilité des accès, et la conformité aux meilleures pratiques AWS.


## 🔑 Contrôles d'accès (IAM)

- Attribution de permissions selon le **principe du moindre privilège**.
- Utilisation de **rôles IAM** dédiés à Terraform, CI/CD et accès lecture seule.
- Aucune **clé d’accès statique** dans le code source.
- Politique IAM pour DynamoDB : accès restreint à un seul rôle autorisé.

---

## 🔒 Chiffrement des données

- ✅ **Chiffrement au repos activé** sur DynamoDB via AWS KMS.
- ✅ **Chiffrement SSE (AES-256)** activé sur tous les buckets S3.
- ✅ Rotation automatique de la clé KMS activée.

---

## 🌐 Communication sécurisée

- Tous les accès passent via **HTTPS (TLS 1.2 ou supérieur)**.
- Aucune exposition publique des services.
- Possibilité d’utiliser **CloudFront** pour proxy sécurisé (non inclus ici mais conseillé en production).

---

## 🛡️ Journalisation & surveillance

- ✅ **AWS CloudTrail** activé : journalise toutes les actions API.
- ✅ Logs envoyés vers un bucket S3 versionné & chiffré.
- ✅ **AWS Config** actif : surveillance des changements de ressources critiques (DynamoDB, S3, IAM...).
- ✅ **AWS GuardDuty** actif : détection d’anomalies, attaques ou comportements suspects.

---

## 🚨 Monitoring & Alertes

- **CloudWatch Alarms** configurés pour :
  - Tentatives d’accès non autorisées
  - Suppression ou modification non planifiée de ressources
  - Erreurs de lecture/écriture DynamoDB

---

## 📦 Stockage sécurisé (S3)

- Buckets **non publics** par défaut
- **Versioning activé**
- **Politique de rétention** de 90 jours sur les logs
- Chiffrement AES-256 automatique

---

## 🧪 Scans & conformité

- Exemple de **scan de conformité** simulé (voir `scan_report.json`)
- Projet conforme aux piliers **Sécurité** et **Fiabilité** du [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)

---

## 🔐 Bonnes pratiques supplémentaires

- Aucun secret ou variable sensible dans le code.
- Fichiers `.tfstate` protégés et exclus du dépôt (`.gitignore`)
- Projet conçu pour être **audit-friendly**.

---

## 📞 Contact

Pour signaler une vulnérabilité ou poser une question sécurité :

> **Nom** : kevin Maruis Kamdem  
> **Email** : kkamdem071@gmail.com  
> **GitHub** : @galileekamdem(https://github.com/galileekamdem)

---



