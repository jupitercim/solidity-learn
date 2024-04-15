pragma solidity ^0.8.0;


contract MsgB {

    event LogEvent(address message);


    function printLog() public payable returns (address ){
            emit LogEvent(msg.sender);
           return msg.sender; //A合约的地址
    }

 

}