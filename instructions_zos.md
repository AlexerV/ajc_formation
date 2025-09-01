# Instructions Z/OS et CICS

Ce document présente plusieurs procédures et commandes spécifiques à l'administration sous Z/OS et à l'utilisation de CICS. Les instructions suivantes couvrent des tâches diverses, allant de l'annulation de sessions à la gestion des programmes et transactions, sans lien direct entre elles.

---

## Table des matières

1. [Annuler une session (en cas de mauvais **logoff**)](#1-annuler-une-session-en-cas-de-mauvais-logoff)
2. [Commandes Z/OS pour la gestion des programmes et transactions CICS](#2-commandes-zos-pour-la-gestion-des-programmes-et-transactions-cics)
3. [Créer et installer un programme et une transaction CICS](#3-créer-et-installer-un-programme-et-une-transaction-cics)
4. [Exécution de la transaction](#4-exécution-de-la-transaction)
5. [Voir le contenu d'un fichier KSDS](#5-voir-le-contenu-dun-fichier-ksds)

---

## 1. Annuler une session (en cas de mauvais **logoff**)

### Étapes pour annuler une session active :

- **Menu** `M.5`
- **Saisir** la commande `DA`
- **Filtrer** avec `3`, puis sélectionnez `API*` pour afficher toutes les sessions actives
- **Appuyez sur** `C` dans la colonne `NP`, puis validez avec **Entrée** deux fois
- **Réinitialisez** le filtre `3` sur votre API

---

## 2. Commandes Z/OS pour la gestion des programmes et transactions CICS

### Se connecter à CICS

Pour se connecter à CICS, utilisez la commande suivante :
`L CICS`

Cela remplace la commande habituelle `LOGON APIX`.

### Affichage des ressources CICS

Pour afficher les ressources CICS (programmes, fichiers, transactions), utilisez ces commandes :

Lister les programmes : `CEMT I PROG`

Lister les fichiers : `CEMT I FILE`

Lister les transactions : `CEMT I TRANS`

### Se déconnecter

Pour se déconnecter de CICS, suivez ces étapes :

  - Appuyez sur `F3` pour revenir à une page vide.

  - Tapez la commande suivante pour vous déconnecter : `CESF LOGO`

---

### 3. Créer et installer un programme et une transaction CICS

Cette section explique comment créer et installer un programme et une transaction dans CICS.

### 3.1 Créer un programme

Pour créer un programme, utilisez la commande suivante :

- `CEDA DEF PROG(PXHELLO) GROUP(APIX)`

- Complétez avec **Language ==> COBOL**.

- Appuyez sur **Entrée**.

- Vous devriez voir `DEFINE SUCCESSFUL` en bas de l'écran.

- Appuyez sur `F3` pour revenir en arrière.

### 3.2 Installer le programme

Pour installer le programme dans CICS, utilisez la commande suivante :

- `CEDA INS PROG(PXHELLO) GROUP(APIX)`

- Vérifiez que `INSTALL SUCCESSFUL` apparaît en bas de l'écran.

- Appuyez sur `F3` pour revenir en arrière.

### 3.3 Créer une transaction

Pour créer une transaction associée au programme, utilisez cette commande :

- `CEDA DEF TRANS(TXHE) GROUP(APIX) PROG(PXHELLO)`

- Vous devriez voir `DEFINE SUCCESSFUL` en bas de l'écran.

- Appuyez sur `F3` pour revenir en arrière.

### 3.4 Installer la transaction

Pour installer la transaction dans CICS, utilisez cette commande :

- `CEDA INS TRANS(TXHE) GROUP(APIX)`

- Vous devriez voir `INSTALL SUCCESSFUL` en bas de l'écran.

- Appuyez sur `F3` pour revenir en arrière.

---

### 4. Exécution de la transaction

Une fois que le programme et la transaction sont installés, vous pouvez exécuter la transaction comme suit :

- Allez sur la page `STATUS: SESSION ENDED` en appuyant sur la touche `F3`.

- Appuyez sur le bouton **CLR** (en haut à droite dans les touches de fonctions) pour clear la page.

- Tapez le nom de la transaction (par exemple, `TXHE`), puis appuyez sur **Entrée**.

---

### 5. Voir le contenu d'un fichier KSDS

Pour voir le contenu d'un fichier KSDS, accédez au menu `M.16.1`.
