// SPDX-License-Identifier: MIT
// Jonard Cyrus Francisco - ETH Proof - Beginner

pragma solidity ^0.8.18;

contract MyToken_JonardFrancisco_ETH_Beginner 
{

    // public variables here
    string public TokenName;
    uint public TokenAbbrv;
    uint public TotalSupply;

    // mapping variable here
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public value;

    // mint function
    function mint(address addressval, uint amount) external
    {
        value[msg.sender][addressval] = amount;
        balances[msg.sender] += amount;
        TotalSupply += amount;
    }

    // burn function
    function burn(address addressval, uint amount) external
    {
        if (TotalSupply >= amount)
        {
            value[msg.sender][addressval] = amount;
            balances[msg.sender] -= amount;
            TotalSupply -= amount;
        }
    }

}
