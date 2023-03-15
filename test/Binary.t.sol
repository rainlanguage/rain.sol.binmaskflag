// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Binary.sol";

contract BinaryTest is Test {
    function testBConstants() public {
        assertEq(B_1, 1);
        assertEq(B_11, 3);
        assertEq(B_111, 7);
        assertEq(B_1111, 15);
        assertEq(B_11111, 31);
        assertEq(B_111111, 63);
        assertEq(B_1111111, 127);
        assertEq(B_11111111, 255);
        assertEq(B_111111111, 511);
        assertEq(B_1111111111, 1023);
        assertEq(B_11111111111, 2047);
        assertEq(B_111111111111, 4095);
        assertEq(B_1111111111111, 8191);
        assertEq(B_11111111111111, 16383);
        assertEq(B_111111111111111, 32767);
        assertEq(B_1111111111111111, 65535);
    }
}
