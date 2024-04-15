pragma solidity ^0.8.0;


contract TestThrows {

    //当 assert 失败时，会触发交易回滚，所有状态更改都会被撤销，包括 Ether 的转账。
    function testAssert() public pure {
        //  条件不满足，则交易将回滚。
        assert(1 == 2, "wsss");
    }

    //require 通常用于输入验证和条件检查。
    //当 require 失败时，会触发交易回滚，但只有当前的函数调用会被回滚，之前的状态更改会被保留，未消耗的 gas 会退回给调用者。
    //require 用于检查函数调用的先决条件是否满足，如果不满足则阻止函数继续执行。
    function testRequire() public pure {
        require(2 == 1);
        //require(bool condition, string memory message):
    }

    function testRequireWithReason() public pure {
        require(2 == 1, "error happen");
        //require(bool condition, string memory message):
    }

    //回滚+失败的原因
    //建议使用 require 进行输入验证和前置条件检查，
    //用 revert 提供更具体的错误信息，少用 assert，
    function testRevert() public pure {
        revert();
//    revert(string memory reason):

    }

    //而 throw 已经被废弃，不再推荐使用。
    function testThrow() public pure {
        throw;
    }
}
