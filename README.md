# Experimental-Cross-Chain-DEX
An experimental cross chain DEX between Bitcoin and Ether

### bitcoin to ether
Click [here]()

### ether to bitcoin
This is just a contract that runs on xcontract. You send ether to the contract and if you don't get the bitcoin before a week you can simply claim it back using the contract. Click [here]() to access. 

### dependencies
This service uses [bitcoin-spv](https://github.com/summa-tx/bitcoin-spv) to allow a cheap verification of proofs inside the smart contract. This is cheaper than using BtcRelay as it only requires a slice of the blocks rather than the whole chain in sequence. 
