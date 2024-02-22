# ERC20 Wrapped Token Example

## Overview
This repository contains Solidity smart contracts to create and interact with an ERC20 wrapped token. The main contracts include an ERC20 implementation (`ERC20.sol`) and a wrapped token contract (`wrappedToken.sol`).

### ERC20 Contract
- The ERC20 contract is a basic implementation of the ERC20 token standard.
- It includes functionalities such as transfer, approve, transferFrom, mint, and burn.
- The token has the name "Solidity by Example" (`name`), symbol "SOLBYEX" (`symbol`), and 18 decimal places (`decimals`).

### WrappedToken Contract
- The WrappedToken contract is designed to wrap and unwrap Ether (ETH) into an ERC20 token.
- It imports the ERC20 contract to utilize its functionality.
- Users can wrap ETH into ERC20 tokens by sending ETH to the contract using the `WrappToken` function.
- The `unWrappToken` function allows users to unwrap ERC20 tokens back into ETH.

## Usage
1. Deploy the ERC20 contract (`ERC20.sol`) to the Ethereum blockchain.
2. Deploy the WrappedToken contract (`wrappedToken.sol`) with the address of the deployed ERC20 contract as a constructor parameter.
3. Interact with the WrappedToken contract to wrap and unwrap ETH.

### Example Deployment (using Remix)
1. Deploy `ERC20.sol`.
2. Copy the deployed ERC20 contract address.
3. Deploy `wrappedToken.sol` with the copied ERC20 contract address as a constructor parameter.

## License
This code is licensed under the MIT License. See `LICENSE` for details.

## Disclaimer
This code is provided as an example and should be used with caution. It is not audited and may not be suitable for production use without further testing and security reviews.
