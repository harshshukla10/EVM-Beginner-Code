# Creating Token 

The `MyToken` contract represents the fundamental token system implementation on the Ethereum blockchain. Managing the generation and destruction of tokens (mint and burn in code) is its primary goal. The contract maintains track of the overall amount of tokens in circulation as well as the balance of each address that has tokens. It also saves information about the token, including its name and abbreviation.

- Minting: To increase the overall supply, new tokens can be produced and added to an address's balance using the `mint` function.
- Burning: Tokens may be destroyed using the `burn` function, which removes them from an address's balance and lowers the overall supply. 


## Description

To demonstrate the fundamentals of token generation and management inside a decentralized ledger, the Creating Token project is a basic implementation of a token system on the Ethereum blockchain technology. It has 3 public state variables such as its name ("MyToken"), abbreviation ("MTK"), and initialized total supply=0, which are stored in the contract. It uses a mapping to link each address to its corresponding token holdings and keep track of balances. One essential component that makes it possible to create new tokens is the mint function, which takes an address and a value, increases the overall supply, and credits the designated address with the new tokens. On the other hand, the burn function makes it easier to destroy tokens by ensuring the address has enough balance before lowering the balance at the address and the total supply by the designated amount. In order to preserve integrity, this function incorporates a precaution that uses a required statement to stop burning more tokens than are available. The MyToken contract provides a simple illustration of how tokens might be managed on the Ethereum blockchain, acting as both an instructional tool and a fundamental part of more intricate token systems. Its main purpose is to provide a basic but useful token that can be included in more complex decentralized apps (dApps) and to assist developers in understanding the fundamentals of token minting and burning.

```
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
```

## Getting Started

### Installing

* You can find Assessment.sol file in the repo. copy the code and paste into remix IDE. Update the current version of your compiler.
* Then just compile and our contract is ready to deploy. After deploy you can test our mint and burn  function.


### Executing program

* Find the solidity compiler icon section and compile the source file.
* Go to Deploy and run transactions section  and deploy the contract.


## Help

The provided code should function as intended, however in case you run into any frequent problems, below are some typical issues and solutions to try:

* Verify that you are using the correct version of the Solidity compiler (0.8.25). Using an alternate version could result in errors or compatibility problems.
* `Insufficient Balance for Burn`: Verify that the address has enough balance to burn the designated amount before using the burn function. Although there is a require statement in the contract to check this, it is generally a good idea to confirm balances before completing any transactions.
* `Gas Limit`: Take into consideration modifying the gas limit if you find that transactions are failing because of it. Make sure your setup can support the gas needed for token burning and minting.
* `Problems with Contract Deployment`: Verify that your Ethereum network connection is stable and that you have enough Ether in your wallet to cover the contract's deployment expenses.



## Authors

HARSH SHUKLA
hs.jpg1034@gmail.com



## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
