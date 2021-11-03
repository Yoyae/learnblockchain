// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract Bank{
    mapping( address => uint) private _balances;

    function deposit( uint _amount) public{
        require(msg.sender != address(0), "You cannot deposit for the address zero");
        _balances[msg.sender] = _amount;
    }

    function transfer( address recipient, uint amount) public{
        require(recipient != address(0), "You cannot transfer to the address zero");
        require( amount <= _balances[msg.sender] , "The amount exceed balance");

        _balances[recipient] += amount;
        _balances[msg.sender] -=  amount;
    }

    function balanceOf(address _address) public view returns(uint){
        return _balances[_address];
    }
}