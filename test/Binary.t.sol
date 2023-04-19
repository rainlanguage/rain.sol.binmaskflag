// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

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

    function testBinaryMaskConstantsFuzz(uint256 u_) public {
        assertLe(u_ & MASK_1BIT, B_1);
        assertLe(u_ & MASK_2BIT, B_11);
        assertLe(u_ & MASK_3BIT, B_111);
        assertLe(u_ & MASK_4BIT, B_1111);
        assertLe(u_ & MASK_5BIT, B_11111);
        assertLe(u_ & MASK_6BIT, B_111111);
        assertLe(u_ & MASK_7BIT, B_1111111);
        assertLe(u_ & MASK_8BIT, B_11111111);
        assertLe(u_ & MASK_9BIT, B_111111111);
        assertLe(u_ & MASK_10BIT, B_1111111111);
        assertLe(u_ & MASK_11BIT, B_11111111111);
        assertLe(u_ & MASK_12BIT, B_111111111111);
        assertLe(u_ & MASK_13BIT, B_1111111111111);
        assertLe(u_ & MASK_14BIT, B_11111111111111);
        assertLe(u_ & MASK_15BIT, B_111111111111111);
        assertLe(u_ & MASK_16BIT, B_1111111111111111);
    }
}
