pragma solidity ^0.5.0;

// lvl 2: tiered split
/* Splitting company profits based on employee tier CEO, CTO and Bob a regular employee.*/
contract TieredProfitSplitter {
    address payable employee_one; // ceo
    address payable employee_two; // cto
    address payable employee_three; // bob
/*Created constructor function in order to allocate employee payable variable to payable addresses.*/
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }
// Should always return 0! Use this to test your `deposit` function's logic
/*Will return "0" CEO will receive any remainder amount.*/
    function balance() public view returns(uint) {
        return address(this).balance;
    }
/*Deposit function will automatically divide the units from "100%" based on the empoyee tiers as noted 
/*On the below calculation CEO 50%-CTO 25%-Bob 15%.*/
    function deposit() public payable {
        uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units
        uint total;
        uint amount;
        //Emplpoyee One: CEO
        amount = points * 60;
        total += amount;
        employee_one.transfer(amount);
        //Employee Two: CTO
        amount = points * 25;
        total += amount;
        employee_two.transfer(amount);
        //Employee Three: Bob
        amount = points * 15;
        total += amount;
        employee_three.transfer(amount);
        // ceo gets the remaining wei
        employee_one.transfer(msg.value - total); 
    }
/*This exteranl payable function ensures that the remainder is deposited to the CEO.*/
    function() external payable {
        deposit();
    }
}