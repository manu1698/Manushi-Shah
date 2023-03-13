//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloNerds
{
    uint[] public numbers;

    function addInArray(uint _num)public{
        numbers.push(_num);
    }
    function getFullArray() public view returns(uint[] memory){
        return numbers;
    }
    function SearchandDelete(uint _num) public{
        uint index;
        uint length = numbers.length - 1;
        for(uint i=0; i<numbers.length; i++){
            if (numbers[i] == _num){
                index = i;
            }

        }
    numbers[index] = numbers[length];
    numbers.pop();   
    }
}


