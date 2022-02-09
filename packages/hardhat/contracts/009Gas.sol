// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    Gas is unit of computation
    You pay Gas Spent * Gas Price

    Gas limits
        - gas limit - max amount for transaction set by user 
        - block gas limit - max amount for block set by network 
*/
contract Gas {
    uint public i = 0;

    // Using up all of the gas you send causes transaction to fail.
    // State changes are undone
    // GFas spent are not refunded
    function forever() public {
        // Loop until all gas is spent and transaction fails
        while (true) {
            i += 1;
        }
    }
}