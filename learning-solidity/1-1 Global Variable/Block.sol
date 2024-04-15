pragma solidity ^0.8.0;


contract BlockDemo {




    // 存储区块信息的结构体
    struct BlockInfo {
        uint256 number;
        uint256 timestamp;
        uint256 difficulty;
        uint256 gasLimit;//block.gaslimit：当前区块的 gas 限制。这是一个表示当前区块中可以用于交易和合约执行的 gas 的总量。
        address coinbase;//当前区块的矿工地址。这是一个表示当前区块的矿工地址，即区块奖励将发送到这个地址。
        bytes32 blockHash;
    }

    // 获取当前区块的信息
    function getCurrentBlockInfo() public view returns (BlockInfo memory) {
        BlockInfo memory info;
        info.number = block.number;
        info.timestamp = block.timestamp;
        info.difficulty = block.difficulty;
        info.gasLimit = block.gaslimit;
        info.coinbase = block.coinbase;
        info.blockHash = blockhash(block.number); // 注意：gas 费用较高，仅供演示
        return info;
    }


}





}