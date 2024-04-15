pragma solidity ^0.8.0;

contract Fallback {


    event Received(address sender, uint amount);
    //[不带函数名]+，当合约接收到以太币或者执行了未知的函数调用时，自动调用+ fallback 关键字定义
    // Fallback function - 当合约接收以太币时自动调用

    function sayHello() public payable {
       emit Received(msg.sender, msg.value);
    }

    // fallback() external payable { 
    //     emit Received(msg.sender, msg.value);
    // }


     receive() external payable {
        // 处理以太币的直接发送
         emit Received(msg.sender, msg.value);
    }

}