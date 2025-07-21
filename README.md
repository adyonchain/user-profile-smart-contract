# 🧠 User Profile Smart Contract

A simple Solidity smart contract that allows users to register, update, and view their personal profile data on-chain. Built for educational purposes and experimentation with Ethereum smart contracts.

---

## Features

- 📝 Register a user with `name`, `age`, and `email`
- 🔄 Update existing user profile data
- 🔍 View profile information (name, age, email, timestamp)
- 🛡️ Prevent duplicate registrations
- ⏰ Tracks registration time via `block.timestamp`

---

## 📦 Tech Stack

- **Solidity** `^0.8.0`
- Tested using [Remix IDE](https://remix.ethereum.org)

---
## 🚀 How to Use (via Remix)
1. Open Remix IDE
2. Create a new file: UserProfile.sol
3. Paste the contract code from UserProfile.sol
4. Compile with Solidity version ^0.8.0
5. Deploy using the Remix VM, or connect MetaMask to a testnet
6. Interact with functions:
     register(name, age, email)
     updateProfile(name, age, email)
     getProfile() → view your info

#🔒 Notes
Each user is identified by their msg.sender (Ethereum address).

## 🛠 Contract Structure

```solidity
struct User {
  string name;
  uint age;
  string email;
  uint256 registeredAt;
  bool exists;
}

Registration is restricted to one time per address.



Created by @adyonchain
