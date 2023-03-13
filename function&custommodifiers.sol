//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FM{
    address owner;
    uint values;

    constructor(){
        owner = msg.sender;
    }
    modifier OnlyOwner(){
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    function setValue(uint _value) public{
        values = _value;
    }
    function getValue() public view returns(uint){
        return values;
    }
    function division() public{
        values /= 7;
    }
}