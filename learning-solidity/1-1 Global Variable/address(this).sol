pragma solidity ^0.8.0;


contract addressThis {


    function getAddress() public {

        return address(this);//代表当前合约地址的特殊地址。
    }

}