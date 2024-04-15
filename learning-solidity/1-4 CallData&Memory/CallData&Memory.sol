pragma solidity ^0.8.0;

contract CallDataMemory {


// //   bool , bytes memory ,        string + bytes

     function copyDataWithPure(bool data) public pure returns (bool) {
        return data;
    }

      function copyDataWithView(bool data) public view returns (bool) {
        return data;
    }

      function copyDataWithOutView(bool data) public  returns (bool) {
        return data;
    }

    //   function copyData1( memory data) public {     编译报错
    //     return data;
    // }

       function copyData1(string memory data) public returns (string memory) {
        return data;
    }

    //接收 data 参数，它是一个可修改的 memory 数据。在函数内部，我们将 calldata 中的数据复制到了 memory
    function copyDataWithMemory(bytes memory data) public returns(bytes memory){
        return data;
    }


    //calldata 中的数据不能被修改，只能被读取
    function copyDataWithCallData(bytes calldata data) public returns (bytes calldata){  // 编译报错
        return data;
    }




 

    // function copyData(string data, string data1) public {
    //     return data;
    // }

    // function copyData(string data, string data1, bytes data2) public {
    //     return data;
    // }


    // function processCallDataWithCallData(bytes calldata data) public {
    //     return data;

    // }

}