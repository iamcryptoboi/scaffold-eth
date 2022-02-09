// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// To write or update state variable you need to send a transaction
// Otherwise, you can read state variables for free, without any transaction fee.
contract SimpleStorage {
    // State variable to store a number
    uint public num;

    // Transaction method to update state variable
    function set(uint _num) public {
        num = _num;
    }

    // You can read without sending transaction
    // Need to have "view" state mutability
    function get() public view returns (uint) {
        return num;
    }
}