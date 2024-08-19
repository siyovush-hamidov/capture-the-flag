// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "src/level19.sol";

contract Attacker
{
    AlienCodex level19;
    constructor(address _level19)
    {
        level19 = AlienCodex(_level19);
    }

    function exploit() external 
    {
        
    }
}