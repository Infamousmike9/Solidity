pragma solidity ^0.5.0;

//importing SAFEMATH
//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/math/SafeMath.sol";
contract AssociateProfitSplitter {
    //using SafeMath for uint;
//adding payable address variables:    
    address payable employee_one;
    address payable employee_two;
    address payable employee_three;
//adding constructor 
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
//deposit function used to return remainder to sender:
    function deposit() public payable {
        uint amount = msg.value / 3;
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);
        msg.sender.transfer(msg.value - amount * 3);
    }

    function fallback() external payable {
        deposit();
    }
}
