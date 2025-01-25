//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MockV3Aggregator} from "../test/mock/MockV3Aggregator.sol";

contract HelperConfig is Script {
    NetworkConfig public activeNetwork;

    struct NetworkConfig {
        //create a type that will contain the needed value - the priceFeed address
        address priceFeed;
    }

    constructor() {
        if (block.chainid == 11155111) {
            activeNetwork = getEthSepoliaNetwork();
        } else {
            activeNetwork = getEthAnvilNetwork();
        }
    }

    function getEthSepoliaNetwork() public pure returns (NetworkConfig memory) {
        NetworkConfig memory sepoliaPriceFeed = NetworkConfig({
            priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
        return sepoliaPriceFeed;
    }

    function getEthAnvilNetwork() public returns (NetworkConfig memory) {
        // create and deploy mock contract
        if (activeNetwork.priceFeed != address(0)) return activeNetwork;

        vm.startBroadcast();
        MockV3Aggregator mockV3Aggregator = new MockV3Aggregator(8, 2000e8);
        vm.stopBroadcast();

        NetworkConfig memory anvilPriceFeed = NetworkConfig({
            priceFeed: address(mockV3Aggregator)
        });
        return anvilPriceFeed;
    }
}
