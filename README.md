# 🎓 Formation Développeur Grands Systèmes

Ce dépôt est dédié à la présentation de ma formation en **Développement Grands Systèmes**, axée sur les environnements IBM Mainframe et les technologies associées.

## 🖥️ Objectif de la formation

Acquérir les compétences nécessaires pour maintenir, développer et faire évoluer des applications critiques sur environnement **IBM z/OS**, utilisées notamment dans les secteurs bancaires, assurantiels et institutionnels.

---

## 🧰 Technologies & Environnements étudiés

### 🧑‍💻 Environnement & technologies Mainframe :
- **z/OS** : Système d’exploitation IBM pour mainframe.
- **TSO/ISPF** : Interface utilisateur pour accéder, modifier et exécuter du code sur le mainframe.
- **JCL (Job Control Language)** : Langage de script pour lancer des traitements batch et gérer les ressources.
- **VSAM** : Système de gestion de fichiers (séquentiels, indexés, etc).
- **COBOL** : Langage de programmation orienté gestion, largement utilisé en entreprise.
- **Pacbase** : Générateur d'applications pour la maintenance de systèmes d'information.

---

## 🔧 Projets & Travaux réalisés

### ✅ Développement & maintenance COBOL
- Création de programmes batch en **COBOL** : lecture/écriture de fichiers, tri, traitement conditionnel, mise en forme des données.
- Manipulation de **fichiers VSAM** (KSDS, ESDS) : chargement, lecture, mise à jour.

### ✅ Utilisation de JCL
- Écriture de **scripts JCL** pour soumettre des jobs sur le mainframe
- Gestion des jeux de données, affectation d’unités, gestion des retours code

### ✅ Interface TSO/ISPF
- Utilisation du terminal ISPF pour la navigation dans le système, l'édition de code, la soumission de jobs
- Consultation des logs, interprétation des RC (Return Code) et corrections d’erreurs

### ✅ Introduction à Pacbase
- Compréhension de l’environnement Pacbase
- Analyse de programmes générés et simulation de maintenance applicative

---

## 📌 Compétences acquises

- Développement et exécution de programmes COBOL sur z/OS
- Gestion de jobs et traitements batch via JCL
- Utilisation avancée de l’environnement TSO/ISPF
- Manipulation de fichiers VSAM
- Lecture et compréhension d’applications Pacbase
- Analyse de retours systèmes et résolution d’erreurs en environnement mainframe

---

## 💻 Logiciels utilisés

Au cours de ma formation, j'ai utilisé plusieurs logiciels et outils pour interagir avec l'environnement mainframe, développer, et gérer les traitements batch. Voici les principaux logiciels utilisés :

- **TN3270** : Client terminal pour se connecter à un mainframe et interagir avec les systèmes IBM z/OS via une interface 3270.
- **WC3270** : Utilisé pour les transferts de fichiers entre le mainframe et des systèmes locaux. Idéal pour l'échange de données avec les serveurs z/OS.
- **IBM Developer for z/OS** : IDE spécifique pour le développement et le débogage d'applications sur z/OS, avec des outils d'intégration pour COBOL, JCL et autres langages de développement mainframe.
- **VMware Workstation 17 Player** : Virtualisation utilisée principalement pour faire tourner l'environnement Pacbase localement. Permet de simuler un environnement mainframe et de tester des applications Pacbase dans un cadre de développement.
- **OpenCobolIDE** : IDE pour le développement et le test de programmes COBOL, adapté pour les environnements de développement COBOL locaux avant déploiement sur le mainframe.

---

## 📂 Ressources personnelles – Fichiers TSO

Durant ma formation, j'ai accumulé un ensemble conséquent de fichiers TSO, disponibles individuellement dans ce dépôt GitHub.  
Pour faciliter la consultation et le téléchargement, j’ai également regroupé tous ces fichiers dans une archive ZIP :

- Télécharger l’archive complète : [Archive ZIP](https://github.com/AlexerV/ajc_formation/blob/main/TSO/API7/TSO_FILE.zip)

- Les fichiers sont aussi consultables individuellement dans le dépôt GitHub : [Dépôt](https://github.com/AlexerV/ajc_formation/tree/main/TSO/API7)

---
## 📁 Projet de groupe – Traitement de données Mainframe
<details>
<summary>Voir le projet</summary>

Dans le cadre de ma formation, j'ai participé à un projet de groupe simulant une mission pour l'entreprise fictive **AJCFRAME**, spécialisée dans la vente de produits technologiques.  
L'objectif du projet était de concevoir des traitements batch **COBOL**, automatiser l'import de données issues de fichiers externes, générer des factures à partir de commandes clients, et développer une interface utilisateur transactionnelle via **CICS**.

🔗 **Dépôt GitHub** du [projet](https://github.com/AlexerV/ajc_project).

### 🧑‍💻 Ma contribution principale (Partie 2 – Intégration des ventes étrangères) :
- Développement du traitement **COBOL** pour lire et traiter les ventes issues des fichiers :
  - `PROJET.VENTESEU.DATA` (Europe)
  - `PROJET.VENTESAS.DATA` (Asie)
- Formatage et insertion des données dans la **base de données DB2**
- Calcul et mise à jour automatique du **chiffre d'affaires** pour chaque client
- Écriture et tests des **JCL** associés aux traitements batch
- Vérification des retours code et débogage via **TSO/ISPF**

Ce projet m’a permis d'approfondir mes compétences sur les traitements de fichiers séquentiels, l'intégration en base DB2, et l’automatisation de tâches sur un environnement **mainframe z/OS**.
</details>
