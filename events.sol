//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloPeople
{
    string MotivationQuotes;
    address owner;

    event NewQuote(string);

    constructor(){
       MotivationQuotes = "The harder you work the better you get";
       owner = msg.sender;
    }
    modifier OnlyOwner(){
        require(msg.sender == owner, "You are unable to execute the function");
        _;
    }
    function addQuote(string memory _quote) OnlyOwner public{
        MotivationQuotes = _quote;
        emit NewQuote(_quote);
    }
    function getQuote() public view returns (string memory){
        return MotivationQuotes;
    }
}