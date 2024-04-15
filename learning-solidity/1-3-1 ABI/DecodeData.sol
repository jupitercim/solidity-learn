pragma solidity ^0.8.0;

contract DecodeData {

//abi.decode(bytes memory encodedData, (...)) returns (...): ABI-decodes the given data, while the types are given in parentheses as second argument. Example: (uint a, uint[2] memory b, bytes memory c) = abi.decode(data, (uint, uint[2], bytes))
//abi.encode(...) returns (bytes memory): ABI-encodes the given arguments
//abi.encodePacked(...) returns (bytes memory): Performs packed encoding of the given arguments. Note that packed encoding can be ambiguous!
//abi.encodeWithSelector(bytes4 selector, ...) returns (bytes memory): ABI-encodes the given arguments starting from the second and prepends the given four-byte selector
//abi.encodeWithSignature(string memory signature, ...) returns (bytes memory): Equivalent to abi.encodeWithSelector(bytes4(keccak256(bytes(signature))), ...)`
//


    event DecodedData(uint256 value);

    function decodeData(bytes memory _data) public {
        // 假设 _data 是一个包含单个 uint256 值的字节数组
        uint256 decodedValue = abi.decode(_data, (uint256));
        emit DecodedData(decodedValue);
    }
}

