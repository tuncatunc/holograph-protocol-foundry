// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";
import {Script} from "forge-std/Script.sol";
import {Counter} from "src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function test_CounterDeployedCodeIsEqualToOnChainCode() public {
        // get the deployed contract bytecode
        bytes memory bytecode = vm.getDeployedCode("Counter.sol:Counter");
        assertEq(address(counter).code, bytecode);
    }
}
