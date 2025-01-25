# FundMe Smart Contract Project

## About

This is a crowdfunding project built to enhance learning about smart contracts using Foundry. Starting with a basic `FundMe.sol` contract, deployable via Remix, this project expands on critical features necessary for building robust and production-ready smart contracts.

## Getting Started

### Requirements

Before proceeding, ensure you have the following tools installed:

- [Node.js](https://nodejs.org/)
- [Foundry](https://getfoundry.sh/)

You will also need the **Chainlink Brownie Contracts** repository, which provides tools for integrating Chainlink oracles. These oracles are used for the ETH/USD price feed in the contract:

- Chainlink Brownie Contracts GitHub Repo: [https://github.com/smartcontractkit/chainlink-brownie-contracts](https://github.com/smartcontractkit/chainlink-brownie-contracts)

Install the required Chainlink contracts using Foundry:

```bash
forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit
```

Initial FundMe Contract
To begin, clone the repository:

```bash
git clone https://github.com/Cyfrin/foundry-fund-me-cu
```

Final project repository:

```bash
https://github.com/marina-ciuperca/Foundry_FundMe.git
```

---

## Learned Concepts

### Foundry Basics

- **Forge, Anvil, Cast, Chisel**: Learn and utilize the essential Foundry tools for smart contract development.
- Master the main **Forge** commands for compiling, deploying, and testing smart contracts.

### Local and Test Network Deployments

- Deploy and test contracts on a local environment using **Anvil**.
- Utilize **Alchemy** tools to deploy contracts on a test network (e.g., Sepolia).

### Scripting

- Create deployment scripts for multiple chains.
- Write interaction scripts (e.g., funding the `FundMe` contract programmatically for future testing).

### Oracle Integration

- Integrate **Chainlink** price feeds into the contract for ETH/USD conversion.

### Testing

- Perform **unit testing**, **integration testing**, **mock testing**, and **fork testing**.
- Use tools to measure test coverage, gas usage, and perform gas optimization.

### Automation

- Leverage a `Makefile` for automating common tasks, streamlining the development process.

---

## Features Implemented

- **Price Feed Integration**:  
  The project incorporates a **Chainlink PriceFeed** oracle to fetch live ETH/USD conversion rates.
- **Script-Based Interactions**:  
  Scripts have been created to test contract funding and simulate real-world interactions.
- **Multi-Chain Deployment**:  
  The deployment scripts support multiple blockchain networks, enabling flexible testing and deployment scenarios.

---

# Resources

- [Foundry Documentation](https://book.getfoundry.sh/)
- [Chainlink Brownie Contracts](https://github.com/smartcontractkit/chainlink-mix)
- [Alchemy](https://www.alchemy.com/)

Feel free to contribute or suggest improvements!

---

# Acknowledgements

Heartfelt thanks for invaluable learning opportunities to:

- **Patrick Collins** ([GitHub](https://github.com/patrickalphac))
- The **[Cyfrin](https://www.cyfrin.io/updraft)** learning platform
- [Cyfrin Foundry Full Course Repository](https://github.com/Cyfrin/foundry-full-course-cu)  
  ❤️
