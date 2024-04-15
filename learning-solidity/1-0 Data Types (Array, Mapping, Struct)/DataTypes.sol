pragma solidity ^0.8.0;

contract DataTypes {

    uint ss = 1;
    uint8 sss = 1;
    bool myBool = false;

    int8 myInt = - 128;
    uint8 myUInt = 255;

    string myString;
    uint8[] myStringArr;

    byte myValue;
    bytes1 myBytes1;
    bytes32 myBytes32;

//    fixed256x8 myFixed = 1; // 255.0
//    ufixed myFixed = 1;

    enum Action {ADD, REMOVE, UPDATE}

    Action myAction = Action.ADD;

    address myAddress;

    function assignAddress() public {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }



    uint[10] myFixedArr;



    mapping(address => Account) _accounts;

    function() public payable {
        _accounts[msg.sender].balance += msg.value;
    }

    function getBalance() public view returns (uint) {
        return _accounts[msg.sender].balance;
    }
}
