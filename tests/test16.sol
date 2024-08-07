// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level16.sol";

contract Attacker
{
    Preservation level16;
    constructor(address _level16)
    {
        level16 = Preservation();
    }
}