// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Primitives {
    bool public boo = true;

    // unsigned int
    uint8 public u8 = 1; // unsigned int 0 to 2**8-1
    uint256 public u256 = 456; // unsigned int 0 to 2**256-1
    uint public u = 123; // uint is an alias for uint256

    // signed int
    int8 public i8 = -1; // -2**7 to 2**7-1
    int256 public i256 = 456;
    int public i = -123; // same as int256

    // min max
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // address type holds 20 bytes (uint160 or bytes20 size)
    // Docs: https://docs.soliditylang.org/en/v0.8.11/types.html?highlight=address
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /* 
    In solidity there are two types of byte types
    - fixed-size and dynamically-sized
    - bytes is dynamically-sized and is similar to bytes1[] but gets padded with 31 bytes between elements.
    */

    bytes s = "Storage";
    bytes1 public a = 0xb5; // [10110101]
    bytes1 public b = 0x01;
    bytes public c = bytes.concat(s,a,b); 
    uint public slen = s.length; // 7

    bytes1[3] a3;
    uint public a3size = a3.length; // 3 elements
    uint public a3ElementSize = a3[0].length; // 1 byte

    bytes[][5] array;
    uint public arraySize = array.length; // 5 elements
    uint public arrayElementSize = array[0].length; // size is 0 but 32 bytes of padding is used // can confirm this by looking at storage
    

    // Default values
    // unassigned variables have default values
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000  // 20 bytes



}