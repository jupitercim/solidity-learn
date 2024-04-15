pragma solidity ^0.8.0;

contract EncodePackedExample {

    event PackedData(bytes32 data);



    //十六进制字符串：你可以直接提供一个十六进制字符串，长度为 64 个字符。例如，"0x123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"。
    function encodePackedDemo1(uint256 _num, bytes32 _hash) public {
        // 将给定的参数编码成紧凑的字节数组
        bytes memory packedData = abi.encodePacked(_num, _hash);
        emit PackedData(keccak256(packedData));
    }


    //十六进制字符串：你可以直接提供一个十六进制字符串，长度为 64 个字符。例如，"0x123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"。
    function encodePackedDemo(uint256 _num, address _addr, bytes32 _hash) public {
        // 将给定的参数编码成紧凑的字节数组
        bytes memory packedData = abi.encodePacked(_num, _addr, _hash);
        emit PackedData(keccak256(packedData));
    }
}