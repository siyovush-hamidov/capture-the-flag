// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level08.sol";
import "hardhat/console.sol";

contract Attacker
{
    Vault level08;

    constructor(Vault _level08) 
    {
        level08 = Vault(_level08);
    }
    // console.log("The vault is open:", level08.locked());
    // function attack() external 
    // {
        // bytes32 hackPassword = slaud(1);
        // level08.unlock(hackPassword);
    // }
    // console.log("The vault is open:", level08.locked());
}