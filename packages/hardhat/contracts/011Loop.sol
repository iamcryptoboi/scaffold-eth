pragma solidity ^0.8.0;

// Loops supported: for, while, do while
// Loops unbounded will hit gas limit, causing transaction to fail
// For this reason while and do while loops are rarely used
contract Loop {
    function loop() pure public {
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // skip to next iteration
                continue;
            }
            if (i == 5) {
                // exit loop
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}