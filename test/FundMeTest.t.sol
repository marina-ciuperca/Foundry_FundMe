//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe, NotOwner} from "../src/FundMe.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        DeployFundMe fundMeDeploy = new DeployFundMe(); // create a new new deploy contract from script
        fundMe = fundMeDeploy.run();
    }

    function test_minimumValue() public {
        uint256 value = fundMe.MINIMUM_USD();
        assertEq(value, 5e18);
    }

    function test_owner() public {
        assertEq(fundMe.i_owner(), msg.sender);
    }

    function test_getVersion() public {
        uint256 version = fundMe.getVersion();
        assertEq(version, 4);
    }

    function testFail() public {
        assertEq(fundMe.i_owner(), address(this));
    }

    function testRevert() public {
        vm.expectRevert(NotOwner.selector);
        fundMe.withdraw();
    }
}
