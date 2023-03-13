//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeDetails{
    struct employeeDetails{
        string name;
        uint age;
        uint salary;
    }
    mapping(uint => employeeDetails) employee;
    function setEmployeeDetails(string memory _name, uint _id, uint _age, uint _salary)public{
        employee[_id] = EmployeeDetails(_name, _age, _salary);
    }
    function getEmployeeDetails(uint _id) public view returns(string memory _ename, uint _eage, uint _esalary);
       return (employee[_id].name, employee[_id].age, employee[_id].salary);
   }
}