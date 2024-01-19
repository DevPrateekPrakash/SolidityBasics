// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract storemynum{
    uint256 public mynum;
    struct person{
        uint256 favnum;
        string name;
    }
    person[] public listofpeeps;

    person public myfriend= person(69,"Lucky");

    function savenum(uint256 enterednum) public{
        mynum=enterednum;
    }

    function returnnum() public view returns(uint){
        return mynum;
    }
    function addperson(uint256 number, string memory name)public{
        listofpeeps.push(person(number,name));
    }
}
