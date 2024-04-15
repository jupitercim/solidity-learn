pragma solidity ^0.8.0;


contract MyContract {

    //函数选择器是函数签名的哈希值，用于唯一标识一个函数
    function encodeWithSelector(uint256 _value, address _recipient) public pure returns (bytes memory) {
        // 使用 abi.encodeWithSelector 创建函数选择器和参数编码的字节数组
        return abi.encodeWithSelector(bytes4(keccak256("myFunction(uint256,address)")), _value, _recipient); // 函数编码了函数的参数
    }
}

//abi.encodeWithSignature(string memory signature, ...) returns (bytes memory):
//Equivalent to abi.encodeWithSelector(bytes4(keccak256(bytes(signature))), ...)`