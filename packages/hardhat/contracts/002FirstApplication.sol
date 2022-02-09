// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public count;

    // Function to get the current count
    // View Function promise not to modify state.
    // - Docs: https://docs.soliditylang.org/en/v0.8.11/contracts.html?highlight=view#view-functions
    function get() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        count -= 1;
    }
}