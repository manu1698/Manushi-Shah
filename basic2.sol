// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract counter{
    uint counter;
    function getcount() public view returns(uint){
        return counter;
    }
    function count1more() public{
        counter++;
    }
}