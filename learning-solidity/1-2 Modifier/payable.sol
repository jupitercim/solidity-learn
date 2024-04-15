pragma solidity ^0.8.0;


contract Payable {

        
    uint public balance;

    function receiveEther() public payable {
        // 将接收到的 Ether 添加到合约的余额中
        balance += msg.value;
    }

    // 查看合约的余额
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }


}