// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity =0.8.25;

import {Test} from "forge-std/Test.sol";
import {
    B_1,
    B_11,
    B_111,
    B_1111,
    B_11111,
    B_111111,
    B_1111111,
    B_11111111,
    B_111111111,
    B_1111111111,
    B_11111111111,
    B_111111111111,
    B_1111111111111,
    B_11111111111111,
    B_111111111111111,
    B_1111111111111111,
    B_11111111111111111111111111111111,
    B_1111111111111111111111111111111111111111111111111111111111111111,
    MASK_1BIT,
    MASK_2BIT,
    MASK_3BIT,
    MASK_4BIT,
    MASK_5BIT,
    MASK_6BIT,
    MASK_7BIT,
    MASK_8BIT,
    MASK_9BIT,
    MASK_10BIT,
    MASK_11BIT,
    MASK_12BIT,
    MASK_13BIT,
    MASK_14BIT,
    MASK_15BIT,
    MASK_16BIT,
    MASK_32BIT,
    MASK_64BIT
} from "src/Binary.sol";

contract BinaryTest is Test {
    function testBConstants() public pure {
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
        assertEq(B_11111111111111111111111111111111, type(uint32).max);
        assertEq(B_1111111111111111111111111111111111111111111111111111111111111111, type(uint64).max);
    }

    function testBinaryMaskConstantsFuzz(uint256 u) public pure {
        assertLe(u & MASK_1BIT, B_1);
        assertLe(u & MASK_2BIT, B_11);
        assertLe(u & MASK_3BIT, B_111);
        assertLe(u & MASK_4BIT, B_1111);
        assertLe(u & MASK_5BIT, B_11111);
        assertLe(u & MASK_6BIT, B_111111);
        assertLe(u & MASK_7BIT, B_1111111);
        assertLe(u & MASK_8BIT, B_11111111);
        assertLe(u & MASK_9BIT, B_111111111);
        assertLe(u & MASK_10BIT, B_1111111111);
        assertLe(u & MASK_11BIT, B_11111111111);
        assertLe(u & MASK_12BIT, B_111111111111);
        assertLe(u & MASK_13BIT, B_1111111111111);
        assertLe(u & MASK_14BIT, B_11111111111111);
        assertLe(u & MASK_15BIT, B_111111111111111);
        assertLe(u & MASK_16BIT, B_1111111111111111);
        assertLe(u & MASK_32BIT, type(uint32).max);
        assertLe(u & MASK_64BIT, type(uint64).max);
    }
}
