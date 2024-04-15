pragma solidity ^0.8.0;


contract Pure {

    uint256 myUint;

    //The getUint function is modified with the pure modifier, indicating that it does not read or modify the contract's state. Therefore, it can only perform calculations or return hardcoded values.
    //Attempting to access myUint within the getUint function would result in a compilation error because pure functions cannot access state variables. Therefore, a hardcoded value (42 in this case) is returned as an example.
    function getValue() pure public returns (uint) {

        return 32;
    }
    //不会读取也不会修改合约的状态。=》不消耗 gas，
    function getValueWithPure() public pure returns (uint) {
        // Cannot access state variables here, only return a hardcoded value or perform calculations.
        // return myUint; // This line would cause a compilation error.
       return 32;
    }

    //view 函数通常用于检索合约状态的信息或执行基于状态的计算。
    //执行 view 函数可能会消耗一些 gas，因为它们需要在区块链上读取状态，但是与修改状态的函数相比，消耗的 gas 要少得多
    function getValueWitView() public view returns (uint) {
        //only read the state or perform computations based on the state, but will not alter it in any way.
        return myUint;
    }

    //view 函数通常用于检索合约状态的信息或执行基于状态的计算。
    //执行 view 函数可能会消耗一些 gas，因为它们需要在区块链上读取状态，但是与修改状态的函数相比，消耗的 gas 要少得多
    function setValueWitView() public returns (uint) {
        uint age = getValueWitView();
        myUint = age;
        //only read the state or perform computations based on the state, but will not alter it in any way.
        return myUint;
    }


}