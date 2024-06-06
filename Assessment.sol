// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract MyToken {

    // here i have defined public variables
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint public totalSupply = 0;

    // here is mapping variable 
    mapping(address => uint) public keepAccount;

    // mint funtion defined 
    function mint(address to, uint value) public {
        totalSupply += value;  //totalSupply=totalSupply+value
        keepAccount[to] += value;
    }

    // burn function is defined here 
    function burn(address from, uint value) public {
        require( keepAccount[from] >= value, "There is Insufficient balance to burn");
        totalSupply -= value;
         keepAccount[from] -= value;
    }
}
