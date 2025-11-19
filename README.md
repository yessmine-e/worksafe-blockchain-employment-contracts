# Blockchain-based Employment Contract System

##  Introduction

WorkSafe est une application décentralisée conçue pour gérer les contrats de travail avec **vérification via blockchain** et stockage sécurisé sur IPFS. L’objectif est de garantir l’authenticité et l’intégrité des contrats tout en offrant une interface simple pour les utilisateurs.

##  Fonctionnement

1. Les utilisateurs se connectent via **MetaMask** pour l’authentification.
2. Les contrats sont stockés sur **IPFS** via **Pinata** pour un stockage décentralisé et sécurisé.
3. La blockchain Ethereum enregistre les références aux contrats pour vérification et immutabilité.
4. Les informations supplémentaires sont gérées via **Firebase**.

##  Technologies utilisées

* **Frontend** : React
* **Blockchain** : Ethereum, MetaMask
* **Storage** : IPFS, Pinata
* **Database / Backend** : Firebase

##  Fonctionnalités clés

* Authentification sécurisée via MetaMask
* Stockage décentralisé des contrats sur IPFS
* Vérification de l’authenticité sur la blockchain Ethereum
* Gestion des données supplémentaires via Firebase

##  Installation & Exécution

1. Cloner le dépôt et installer les dépendances React

```bash
npm install
```

2. Lancer le projet

```bash
npm start
```

3. Connecter MetaMask pour interagir avec la dApp


