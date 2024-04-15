pragma solidity ^0.8.0;


contract ReEntrancy {

//Any interaction from a contract (A) with another contract (B) and any transfer of Ether hands over control to that contract (B).
//This makes it possible for B to call back into A before this interaction is completed.
//To give an example, the following code contains a bug (it is just a snippet and not a complete contract):
// THIS CONTRACT CONTAINS A BUG - DO NOT USE
    /// Mapping of ether shares of the contract.
    mapping(address => uint) shares;
    /// Withdraw your share.
    function withdraw() public {
        if (msg.sender.send(shares[msg.sender]))
            shares[msg.sender] = 0;
    }
}