pragma solidity ^0.8.0;

contract ByteTest {

    struct Account {
        uint balance;
        uint dailyLimit;
    }

    Account myAccount;

    function structFunc() public {
        myAccount.balance = 100;
    }


}