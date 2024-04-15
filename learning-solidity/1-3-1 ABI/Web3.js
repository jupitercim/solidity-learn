// app.js
// 使用 Web3.js 与 Solidity 合约进行交互
//https://docs.web3js.org/#importing-web3js
const {Web3} = require('web3');
const fs = require('fs');
const path = require('path');

const web3 = new Web3('http://localhost:8545'); // 你的以太坊节点地址

const contractAddress = '0x123abc...'; // 合约地址
const abi = JSON.parse(fs.readFileSync(path.join(__dirname, './SimpleStorage.json'))); // 从文件加载 ABI

const contract = new web3.eth.Contract(abi, contractAddress);

// 调用合约的 set 函数来更新存储的值
contract.methods.set(42)
    .send({from: '0xabc123...', gas: 200000})
    .then(receipt => {
        console.log('Transaction receipt:', receipt);
    })
    .catch(error => {
        console.error('Error:', error);
    });

// 调用合约的 get 函数来读取存储的值
contract.methods.get()
    .call()
    .then(result => {
        console.log('Stored value:', result);
    })
    .catch(error => {
        console.error('Error:', error);
    });
