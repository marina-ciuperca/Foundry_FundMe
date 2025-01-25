//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script, console} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundFundMe is Script {
    uint256 SEND_VALUE = 0.1 ether;
    address latestContract = 0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9; // insert the latest deployed contract from broadcast folder instead of using automated devops tool

    function fundFundMe(address _latestContract) public {
        vm.startBroadcast();
        FundMe(payable(_latestContract)).fund{value: SEND_VALUE}();
        vm.stopBroadcast();
        console.log("Funded FundMe with %s", SEND_VALUE);
    }

    function run() external {
        fundFundMe(latestContract);
    }
}

contract WithdrawFundMe is Script {
    uint256 SEND_VALUE = 0.1 ether;
    address latestContract = 0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9; // insert the latest deployed contract from broadcast folder instead of using automated devops tool

    function withdrawFundMe(address _latestContract) public {
        vm.startBroadcast();
        FundMe(payable(_latestContract)).withdraw();
        vm.stopBroadcast();
        console.log("Withdraw FundMe balance!");
    }

    function run() external {
        withdrawFundMe(latestContract);
    }
}
