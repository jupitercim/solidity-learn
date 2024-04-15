pragma solidity ^0.8.0;

contract ByteTest {

    //byte: byte 是一个单字节（8 位）的数据类型。你可以使用 byte 来存储单个字节的数据，
    //其范围是 0x00 到 0xff（十六进制表示）。例如，byte 变量可以存储一个 ASCII 字符或一个字节的二进制数据。你也可以使用 bytes1、bytes2、bytes3 等来表示更多字节的数据，但

    // byte public singleByte = 0x41; // 单个字节的 ASCII 字符 'A'

    // byte public singleByte1 = "A";

    bytes1 public byteArray1 = "A"; //0x41

    //  bytes1 public byteArray1 = "AA";报错，超长

    bytes2 public byteArray2 = "AA";//0x4141

    bytes public byteArray = "Hello"; // 0x48656c6c6f

    // bytes32 public hash1 = 0x123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef; 报错 格式不对

    // bytes32 public hash1 = hex"123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"; 正确

//十六进制字符串：你可以直接提供一个十六进制字符串，长度为 64 个字符。例如，"0x123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"。

    //输入   0x48656c6c6f
    function getBytes(bytes memory data) public returns (bytes memory){
        return data;
    }


    //输入   0x123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
    function getBytes32(bytes32 memory data) public returns (bytes32 memory){
        return data;
    }


}