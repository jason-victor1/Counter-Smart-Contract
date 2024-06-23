// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

contract MyContract {
    uint public count;

    function increment() external {
        count += 1;
    }

    function decrement() external {
        require(count > 0, "count is already at 0");
        count -= 1;
    }

    function getCount() external view returns(uint) {
        return count;
    }
}