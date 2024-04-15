pragma solidity ^0.8.0;

contract Address {

    //十六进制格式：以 0x 开头，后跟 40 个十六进制字符（0-9 和 a-f）。


    address public myAddress         = 0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8; ////用十六进制格式表示地址

    address public myAddressChecksum = 0x7cB57b5A97eAbe94205C07890BE4c1aD31E486A8; ////用十六进制格式表示地址

    address public myAddressEIP55    = 0x7cB57b5A97eAbe94205C07890BE4c1aD31E486A8; ////用十六进制格式表示地址

    //或者使用字符串格式的地址：

    address public myAddress = address("0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8");

//    私钥

}