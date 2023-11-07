// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankAccount {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function deposit(uint256 amount) public onlyOwner {
        require(amount > 0, "Amount must be greater than 0");
        balance = balance+amount;
    }

    function withdraw(uint256 amount) public onlyOwner {
        require(amount > 0, "Amount must be greater than 0");
        require(amount <= balance, "Insufficient balance");
        balance =balance-amount;
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }
}
