// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract WhiteList{
    // Excercice mapping
    mapping( address => bool) whitelist;
    // Excercice event
    event Authorized(address _address);
    //Excercice struct
    struct Person{
        string name;
        uint age;
    }

    Person[] public persons;

    //function add Person 
    function addPerson(string  memory _name, uint _age) pure public {
        Person memory person = Person(_name, _age);
    }

    //Exercice array avancé
    function add(string memory _name, uint _age) public{
        Person memory person = Person(_name, _age);
        persons.push(person);
    }
    //Exercice array avancé
    function remove() public{
        persons.pop();
    }

    //Excerce strucure et fonction
    function Authorize( address _adress ) public{
        whitelist[_adress] = true;
        emit Authorized(_adress);
    }
}