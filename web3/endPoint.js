const {Web3: EndPoint} = require('web3');
//使用 Infura:
//
// Infura 是一个提供以太坊节点服务的平台，你可以注册一个账户并获取免费的 API 访问令牌。登录后，你可以在项目设置中找到 Mainnet 的 Web3 RPC 地址。
// 例如: https://mainnet.infura.io/v3/YOUR_INFURA_PROJECT_ID
// 自己搭建节点:
//
// 如果你有足够的资源和技术能力，你可以自己搭建一个以太坊节点，并通过节点的 HTTP RPC 接口来与网络进行通信。在这种情况下，你可以使用你自己的节点的地址作为 Web3 RPC 地址。
// 使用其他节点提供商:
//
// 除了 Infura 外，还有一些其他的以太坊节点提供商，它们也提供了 Mainnet 的节点服务。你可以注册并获取相应的 Web3 RPC 地址。
const RpcEndpointUrl = "https://bsc-dataseed.binance.org/";
// const RpcEndpointUrl = "https://mainnet.infura.io/v3/YOUR_INFURA_ID";
//private RPC endpoint
const web3 = new EndPoint(RpcEndpointUrl);

//or public RPC endpoint
//const web3 = new Web3('https://eth.llamarpc.com');

web3.eth.getBlockNumber().then(console.log);