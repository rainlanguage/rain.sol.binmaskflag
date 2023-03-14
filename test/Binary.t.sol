// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Binary.sol";

contract BinaryTest is Test {
    function testBConstants() public {
        assertEq(B_1, 1);
        assertEq(B_11, 3);
    }
}
