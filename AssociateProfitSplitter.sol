pragma solidity ^0.5.0;
//Created contract that will even split payment to three employees.
contract AssociateProfitSplitter {
//adding payable address variables:    
    address payable employee_one;
    address payable employee_two;
    address payable employee_three;
//adding constructor that will put each "employee" variable in address payable.
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }
//This function assures that the balance is always "0" as it is returned to the sender.
    function balance() public view returns(uint) {
        return address(this).balance;
    }
//deposit function used to divide payment by three and transfer to each employee. 
    function deposit() public payable {
        uint amount = msg.value / 3;
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);
        msg.sender.transfer(msg.value - amount * 3);
    }
//Fallback function will enable deposit back to sender. 
    function fallback() external payable {
        deposit();
    }
}
