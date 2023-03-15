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

    function testBinaryMaskConstants() public {
        assertEq(1234 & MASK_1BIT, 0);
        assertEq(11 & MASK_2BIT, 3);
        assertEq(1234 & MASK_3BIT, 2);
        assertEq(12345 & MASK_4BIT, 9);
        assertEq(12345 & MASK_5BIT, 25);
        assertEq(12345 & MASK_6BIT, 57);
        assertEq(123456 & MASK_7BIT, 64);
        assertEq(1234567 & MASK_8BIT, 135);
        assertEq(12345678 & MASK_9BIT, 334);
        assertEq(123456789 & MASK_10BIT, 277);
        assertEq(123456789 & MASK_11BIT, 1301);
        assertEq(123456789 & MASK_12BIT, 3349);
        assertEq(1234567890 & MASK_13BIT, 722);
        assertEq(12345678 & MASK_14BIT, 8526);
        assertEq(12345678 & MASK_15BIT, 24910);
        assertEq(1234567 & MASK_16BIT, 54919);
    }
}
