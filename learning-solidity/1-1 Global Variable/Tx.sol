pragma solidity ^0.8.0;


contract Msg {


    event LogEvent(string message);

    event LogEvent(bytes message);

    event LogEvent(string name, string message);

    event LogEvent(string name, bytes message);



    function printLog() public payable {
        msg;
        msg.data;// msg.data：这是一个 bytes 类型的变量，包含了完整的交易数据，包括函数选择器和函数参数。在智能合约内部，你可以使用msg.data来访问传递给当前函数的所有数据。
        msg.sender;// msg.sender：这是一个 address 类型的变量，表示当前调用合约的地址，即交易的发送者地址。在智能合约内部，
        msg.sig;// msg.sig：这是一个 bytes4 类型的变量，包含了调用函数的函数选择器。函数选择器是函数签名的前四个字节的哈希值，用于唯一标识函数。在智能合约内部，你可以使用msg.sig来确定调用的是哪个函数。
        msg.value;// msg.value：这是一个 uint256 类型的变量，表示交易中附加的以太币数量（以 wei 为单位）


       emit LogEvent("msg.data: ", bytes(msg.data));
        emit LogEvent("msg.sender: ", abi.encodePacked(msg.sender));
        //emit LogEvent("msg.sig: ", bytes4(msg.sig));
        emit LogEvent("msg.value: ", abi.encodePacked(msg.value));


    }





}