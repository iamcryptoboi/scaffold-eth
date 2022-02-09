// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElse {
    /*
    Pure functions promise not to read from or modify the state.
    - It should be possible to evaluate pure function at compile time given only its inputs and msg.data
    - without any knowledge of the current blockchain state.
    - Reading from immutable variables can be a non-pure operation (immutable variables are set by constructor)
    */
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way of above
        return _x < 10 ? 1 : 2;
    }
}