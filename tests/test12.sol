// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/level12.sol";

contract Attacker
{
    Privacy leve12;
    constructor(address _level12)
    {
        leve12 = Privacy(_level12);
    }

    function attack(bytes32 theKey) external
    {
        leve12.unlock(bytes16(theKey));
    }
}
//0x3ec71d46189e1d05a38bf8f3c53d08d2ea1fffb36ddb55d93ca5077e3a25cd5a