pragma solidity ^0.8.0;


contract CustomerModifiers {

    address owner;

    modifier onlyOwner(){
        require(msg.sender == owner);
    }


    constructor(){
        owner = msg.sender;
    }

    function getMsg() public {

        return "33";
    }

    function getMsgOnlyOwner() public onlyOwner {

        return "33";
    }

}