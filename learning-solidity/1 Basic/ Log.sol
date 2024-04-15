pragma solidity ^0.8.0;


contract Log {


    event LogEvent(string message);

    event LogEvent(string name, string message);

    function printLog() public {

        emit LogEvent("gary print Log");

        emit LogEvent("name", "gary print Log");
    }

}
