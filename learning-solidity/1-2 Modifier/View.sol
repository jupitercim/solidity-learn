pragma solidity ^0.8.0;


contract View {

    uint256 myUint;

    function getValue() pure public returns (uint) {

        return 32;
    }

    function getValueWitView() public view returns (uint) {
        //only read the state or perform computations based on the state, but will not alter it in any way.
        return myUint;
    }

}