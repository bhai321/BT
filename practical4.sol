// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract marksMangmntSys
{
    
    // creating structure for student dettails

    struct Student{
        uint ID;
        string fname;
        string lname;
        uint marks;
    }
    address owner;
    uint public stdCount = 0;

    // create array to store data
    
    Student[] stdRecords;

    constructor()
    {
        owner = msg.sender;
    }

    function addNewRecord (uint _ID, string memory _fname, string memory _lname,uint _marks) public payable {
        stdCount = stdCount + 1;

        stdRecords.push(Student(_ID, _fname, _lname, _marks));
    }
    function getAllRecords() public view returns(Student[] memory)
    {
        return stdRecords;
    }

}