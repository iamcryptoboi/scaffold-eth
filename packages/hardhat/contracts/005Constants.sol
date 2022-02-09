// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constants {
    // Constants are variables that cannot be modified. Values are hardcoded and can save gas cost.
    // coding convention is to uppercase constant variable names
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;

    uint public i = 123;
    // i = 234; // solidity grammar doesn't allow assignments on contract level

    function setI(uint newI) public {
        i = newI;
    }

    // function setMyInt(uint) public {
    //     MY_UINT = 456; // cannot assigned to constant variable
    // }

}