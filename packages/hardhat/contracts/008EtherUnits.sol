// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Transactions are paid in ether.
// one ether is 10**18 wei or 1e18 wei
contract EtherUnits {
    uint public oneWei = 1 wei;
    bool public isOneWeight = 1 wei == 1;

    uint public oneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18;
}