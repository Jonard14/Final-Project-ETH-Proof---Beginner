// SPDX-License-Identifier: MIT
// Jonard Cyrus Francisco - ETH Proof - Beginner

pragma solidity ^0.8.18;

contract MyToken_JonardFrancisco_ETH_Beginner 
{

    // public variables here
    string public TokenName = "Jonard";
    string public TokenAbbrv = "J14";
    uint public TotalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address addressval, uint amount) external
    {
        balances[addressval] += amount;
        TotalSupply += amount;
    }

    // burn function
    function burn(address addressval, uint amount) external
    {
        if (balances[addressval] >= amount)
        {
            balances[addressval] -= amount;
            TotalSupply -= amount;
        }
    }

}
