# 🔗 Blockchain-based Employment Contract System — WorkSafe

## Introduction

WorkSafe is a decentralized application (dApp) designed to manage employment contracts with blockchain-based verification and secure storage on IPFS. The goal is to guarantee the authenticity and integrity of contracts while providing a simple, user-friendly interface.

## ⚙️ How It Works

1. Users authenticate via MetaMask.
2. Contracts are stored on IPFS through Pinata for decentralized, secure storage.
3. The Ethereum blockchain records contract references to ensure verification and immutability.
4. Additional user/contract metadata is managed through Firebase.

## 🔑 Key Features

- Secure authentication via MetaMask
- Decentralized contract storage on IPFS
- Contract authenticity verification on the Ethereum blockchain
- Additional data management through Firebase
- Custom Solidity smart contract (`ContractManager.sol`) for on-chain contract logic

## 🛠️ Tech Stack

- **Frontend**: React
- **Blockchain**: Ethereum, Solidity, MetaMask, ethers.js / web3.js
- **Storage**: IPFS, Pinata
- **Database / Backend**: Firebase

## 🚀 Installation & Usage

Clone the repository and install React dependencies:
```bash
npm install
```

Run the project:
```bash
npm start
```

Connect MetaMask to interact with the dApp.
