// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../src/level02.sol";

contract Attacker
{
    Fallout level;

    constructor(address _level)
    {
        level = Fallout(_level);
    }
}