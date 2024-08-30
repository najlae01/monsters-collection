# NFT Marketplace Solidity Contract

This project is part of the NFT Marketplace and demonstrates a basic Hardhat setup for deploying a Solidity contract. The contract follows the ERC-721 standard and includes minting and managing NFTs on the Ethereum blockchain.

Links to related repositories:

[Server Side](https://github.com/najlae01/nftmarketplace-server)

[Client Side](https://github.com/najlae01/nftmarketplace-client)

## Setup & Deployment

### 1. Setting Up a Geth Node

1. **Download Geth**: Get the latest version from the [official Geth website](https://geth.ethereum.org/downloads).
2. **Run Geth Node**: Start the node by navigating to the Geth installation folder in the Command Prompt and running:
   ```shell
   geth --http --http.addr "127.0.0.1" --http.port "8545" --http.api "web3,eth"
   ```

### 2. Writing & Deploying the Solidity Contract

1. **Create Project Directory**:
   - Create a folder called `monsters-collection` for the Solidity contract.
2. **Install Dependencies**:

   - Install npm packages and Hardhat:
     ```shell
     npm install --save-dev hardhat
     ```

3. **Initialize Hardhat**:

   - Set up a new Hardhat project:
     ```shell
     npx hardhat
     ```

4. **Configure Alchemy & MetaMask**:

   - Set up an Alchemy app and add the Polygon network to MetaMask.

5. **Write Solidity Contract**:

   - Implement functions like `mint`, `transfer`, and `supportsInterface` as per ERC-721 standards.

6. **Deploy Contract**:
   - Use the following scripts to deploy the contract:
     ```shell
     npx hardhat run scripts/deploy.js
     ```

### 3. Try Running These Tasks

You can run the following Hardhat tasks to interact with your contract:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
