# Counter Smart Contract

This repository contained a simple smart contract called `Counter` that I wrote in Solidity.

## Description

The `Counter` contract was a basic example of a smart contract on the Ethereum blockchain. It demonstrated the fundamental structure and syntax of a Solidity contract. This contract allowed incrementing, decrementing, and retrieving a counter value.

## Contract Code

The contract code was as follows:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }

    function decrement() external {
        require(count > 0, "Counter: decrement overflow");
        count -= 1;
    }

    function getCount() external view returns (uint) {
        return count;
    }
}
```

### Explanation:

- **SPDX-License-Identifier**: Specified the license type. Here it was MIT.
- **pragma solidity ^0.8.25**: Specified the Solidity compiler version to use. The `^` symbol indicated that the contract was compatible with compiler versions 0.8.25 and above but below 0.9.0.
- **contract Counter**: Defined a new contract named `Counter`.
- **uint public count**: Declared a state variable named `count` of type `uint` that was publicly accessible.
- **function increment() external**: Defined a function named `increment` that was `external` (could be called from other contracts and transactions). It increased the value of `count` by 1.
- **function decrement() external**: Defined a function named `decrement` that was `external` (could be called from other contracts and transactions). It decreased the value of `count` by 1, ensuring that `count` did not go below 0.
- **function getCount() external view returns (uint)**: Defined a function named `getCount` that was `external` (could be called from other contracts and transactions) and `view` (did not modify the blockchain state). It returned the value of the state variable `count`.

## Functions

### `increment()`

- **Description**: This function was used to increment the value of the `count` state variable. When called, it increased the value of `count` by 1.
- **Visibility**: `external` - The function could be called from other contracts or from transactions.

### `decrement()`

- **Description**: This function was used to decrement the value of the `count` state variable. When called, it decreased the value of `count` by 1, ensuring that `count` did not go below 0.
- **Visibility**: `external` - The function could be called from other contracts or from transactions.
- **Requirements**: The function ensured that the value of `count` was greater than 0 before decrementing it to avoid overflow.

### `getCount()`

- **Description**: This function was used to retrieve the value of the `count` state variable. When called, it returned the current value of `count`.
- **Visibility**: `external` - The function could be called from other contracts or from transactions.
- **State Mutability**: `view` - The function did not modify the blockchain state. It only read the value of `count`.
- **Returns**: `uint` - The function returned an unsigned integer representing the current value of `count`.
