pragma solidity ^0.8.0;

import "./MsgB.sol";

contract MsgA {

    MsgB public msgB;
        constructor(address bAddress){
            msgB = MsgB(bAddress);

        }

  


    function printLog() public payable returns (address) {
         msgB.printLog();
    
         return msg.sender;//调用者

    }

}