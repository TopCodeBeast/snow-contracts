// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./SnowContracts.sol";

contract SnowContractsTest is DSTest {
    SnowContracts contracts;

    function setUp() public {
        contracts = new SnowContracts();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
