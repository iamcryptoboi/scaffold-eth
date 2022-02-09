// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Immutable variables are like constants. Values can be set inside constructor but cannot be modified afterwards.
contract Immutable {
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}

contract ImmutableEx is Immutable(777) {
}