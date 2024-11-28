// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../src/level05.sol";

contract TokenExploit
{
    Token level;

    constructor(address _level)
    {
        level = Token(_level);
    }

    function exploit() external 
    {
        
    }
}