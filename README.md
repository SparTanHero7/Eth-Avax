# Eth-Avax
This is the final project od 3rd module of metacrafters Etherium + Avax proof
# ExampleContract

## Overview
- ExampleContract` is a simple Solidity smart contract demonstrating the use of `require()`, `assert()`, and `revert()` statements. The contract allows the owner to set a value and includes functions to check the value and ensure that certain conditions are met.

## Functionality
- require()`: Used to ensure that only the owner can set the value and that the value is greater than zero.
- assert()`: Used to verify that a given value is equal to the stored value.
- revert()`: Used to revert the transaction if the caller is not the owner.

## Functions
- setValue(uint256 _value)`: Sets the value if the caller is the owner and the value is greater than zero.
- assertValue(uint256 _value)`: Asserts that the given value is equal to the stored value.
- revertIfNotOwner()`: Reverts the transaction if the caller is not the owner.

## Usage
1. Deploy the contract.
2. Call `setValue(uint256 _value)` to set a value (only the owner can do this).
3. Call `assertValue(uint256 _value)` to check if a given value matches the stored value.
4. Call `revertIfNotOwner()` to ensure that the caller is the owner.


