// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "./ERC20Token.sol";

contract Crowdsale{
    uint public rate = 200; //taux 
    ERC20Token public token; //instance token à déployer

    constructor(uint256 initialSupply){
        token = new ERC20Token(initialSupply); // créer une nouvelle instance
    }

    receive() external payable{
        require( msg.value >= 0.1 ether, "you can't sent less than 0.1 ether");
        distribute(msg.value);
    }

    function distribute(uint amount) internal {
        uint256 tokensToSent = amount * rate;
        token.transfer(msg.sender, tokensToSent);
    }
}