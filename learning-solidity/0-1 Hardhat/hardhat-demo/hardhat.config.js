require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",

  // 其他配置...
  plugins: [
    // 其他插件...
    // 添加Hardhat Ethers插件
    '@nomiclabs/hardhat-ethers'
  ]
};