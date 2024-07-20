# Project Title
Metacrafters assessment of ETH-AVAX module 3

## Description
This is the assessment of a course called Eth-Proof provided to us by Metacrafters, which is a multichain learn and earn platform. In this course, we learned about different blockchain concepts and started our journey in the field of blockchain by laying the foundation in solidity.

## Getting Started
### Installing and Execution of Program:
      * Run the hardhat node locally using npx hardhat node command
      * Open remix.ethereum.org (a online code editor for solidity by ethereum)
      * Open Mytoken.sol given in this repository.
      * Copy the code
      * compile the code.
      * Select Dev Hardhat provider from environment in the deploy tab of the sidebar. It will automatically detect your local hardhat node running in your pc.
      * Now deploy the contract by passing required arguments
      * Your token contract is ready

# Features:
    * Transfer token from one address to another address
    * Minting token
    * Burning token to reduce it's supply
    * Burning and transfer can be done by any user.
    * Minting can be done by the owner only.

# Errors:
    * InsuficientBalance: this takes two values YourBalance and YourAmount. Whenever sender wants to send or burn some amount which is larger than it's account balance. The process is reverted with this error.
    * You are not the owner: If someone uses mint function except owner then this will pops up. This is implemented by using a modifier.

## Help
      * You can use CTRL + S to compile
      * npx hardhat node : to run a local blockchain.

## Authors
Aviral Singh

## Chances of Errors:
      * Create a project and install hardhat and initialize your local blockchain there.
      * Deploy on Dev- hardhat provider in remix.

## License
This project is licensed under the Aviral Singh License.
