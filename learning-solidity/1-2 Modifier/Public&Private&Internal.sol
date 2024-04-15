pragma solidity ^0.8.0;

contract Public {
    uint256 public publicNumber;   // Public variable accessible from outside the contract
    uint256 internal internalNumber;  // Internal variable accessible within the current contract and derived contracts
    uint256 private privateNumber; // Private variable accessible only within the current contract

    constructor(uint256 _initialValue) {
        publicNumber = _initialValue;
        internalNumber = _initialValue;
        privateNumber = _initialValue;
    }

    function setPublic(uint256 _newValue) public {
        publicNumber = _newValue;
    }

    function setInternal(uint256 _newValue) internal {
        internalNumber = _newValue;
    }

    function setPrivate(uint256 _newValue) private {
        privateNumber = _newValue;
    }

    function getPublic() public view returns (uint256) {
        return publicNumber;
    }

    function getInternal() internal view returns (uint256) {
        return internalNumber;
    }

    function getPrivate() private view returns (uint256) {
        return privateNumber;
    }

    function externalCall(uint256 _newValue) external {
        // External function cannot access internal and private functions directly
        // It can access public functions, which can then access internal and private functions
        setPublic(_newValue);
        // setInternal(_newValue); // This would cause a compilation error
        // setPrivate(_newValue); // This would cause a compilation error
    }
}
