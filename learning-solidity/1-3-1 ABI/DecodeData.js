const Web3 = require('web3');

const web3 = new Web3('http://localhost:8545'); // 你的以太坊节点地址

const contractAddress = '0x123abc...'; // 合约地址
const abi = [ /* 合约 ABI */];

const contract = new web3.eth.Contract(abi, contractAddress);

// 调用合约的 decodeData 函数并传入字节数组参数
const data = '0x000000000000000000000000000000000000000000000000000000000000002a'; // 一个 uint256 类型的值，十六进制表示为 0x2a
contract.methods.decodeData(data)
    .send({from: '0x123abc...', gas: 200000}) // 如果函数是修改状态的，使用 send()
    .then(receipt => {
        console.log('Transaction receipt:', receipt);
    })
    .catch(error => {
        console.error('Error:', error);
    });
