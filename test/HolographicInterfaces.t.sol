// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import { HolographInterfaces } from "src/HolographInterfaces.sol";

contract HolographicInterfacesTest is Test {
    HolographInterfaces public holographInterfaces;

    function setUp() public {
        holographInterfaces = new HolographInterfaces();
    }

    function test_CounterDeployedCodeIsEqualToOnChainCode() public view {
        // get the deployed contract bytecode
        bytes memory bytecode = vm.getDeployedCode("HolographInterfaces.sol:HolographInterfaces");
        assertEq(address(holographInterfaces).code, bytecode);
    }
}
