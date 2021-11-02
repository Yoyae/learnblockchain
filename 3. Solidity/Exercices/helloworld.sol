// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract helloWorld{

    string mystring = 'Hello World';

    function hello() public view returns(string memory ){
        return mystring;
    }
}