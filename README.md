# Create and Mint Token

This project demonstrate how we can write a smart contract to create and mint our own token.

## Description
For this project, we will write a smart contract to create our own token on a local HardHat network. Once we have our contract, we should be able to use remix to interact with it. From remix, the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.

## Steps to run this Project
Firstly, clone this github project, then follow the below steps to run this on your VS CODE.


 ### 1. Create a hardhat Javascript project

Run the following commands to setup the project in one terminal

```
npm init -y
npm install --save-dev hardhat
npm install @nomicfoundation/hardhat-toolbox
npx hardhat
```
 
 ### 2. Open two additional terminals in your VS code
 
 ### 3. In the second terminal type: *npx hardhat node*
  This allows you to create a local hardhat network blockchain with demo accounts, where we can deploy our smart contract, and interact with it.
 
 ### 4. In the third terminal, type: *npx hardhat run --network localhost scripts/deploy.js*
  Using this command, we can deploy our smart contract. The deploy script compiles the smart contract and passes the initial value to the constructor, and deploys 
  the contract to the blockchain
  
 ### 5. Now go to remix and follow the given steps below:
#### 1) Go to the deploy tab.
#### 2) There you will see the environment tab, where yu have to select the environment as `Dev - Hardhat Provider`.
#### 3) Then, Enter the URL of the Hardhat network in the dialog box which appears to access the deploy project
#### 4) Now, Enter the address of the smart contract in the `At Address` tab.

Now, you'll be able to interact with the Prati_Token deployed on local Hardhat network and performs the various operations like mint, burn, transfers. 


## Author

Atish Shah


