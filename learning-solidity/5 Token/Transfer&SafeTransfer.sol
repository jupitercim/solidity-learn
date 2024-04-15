pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenTransferExample {
    IERC20 public token;

    constructor(address _tokenAddress) {
        token = IERC20(_tokenAddress);
    }

    // 使用 transfer 方法转移 ERC20 代币
    function transferTokens(address _to, uint256 _amount) external {
        token.transfer(_to, _amount);
    }

    // 使用 safeTransfer 方法转移 ERC20 代币
    function safeTransferTokens(address _to, uint256 _amount) external {
    //   token.safeTransfer(_to, _amount);
    }
}