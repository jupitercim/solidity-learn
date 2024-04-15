pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public storedData;

    event ValueUpdated(uint256 newValue);

    constructor() {
        storedData = 0;
    }

    function set(uint256 x) public {
        storedData = x;
        emit ValueUpdated(x);
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}