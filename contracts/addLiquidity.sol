// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import './interfaces/IUniswapV2Router.sol';
import './interfaces/IERC20.sol';
// import '@openzeppelin/contracts/tokens/ERC20/IERC20.sol'

contract addLiquidity{
    
    address private constant ROUTER_ADDRESS = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D ;
    address private constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48 ;
    address private constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F ;

    event Log(string message, uint256 val);

    //transfer token A and B to unisswap smart contract

    function add_liquidity(address _tokenA, address _tokenB, uint256 _amountA, uint256 _amountB) external {
        IERC20(_tokenA).transferFrom(msg.sender, address(this), _amountA);
        IERC20(_tokenB).transferFrom(msg.sender, address(this), _amountB);

        IERC20(_tokenA).approve(ROUTER_ADDRESS, _amountA);
        IERC20(_tokenB).approve(ROUTER_ADDRESS, _amountB);

        (uint256 amountA, uint256 amountB, uint256 liquidity) = IUniswapV2Router(ROUTER_ADDRESS).addLiquidity(USDC,DAI,_amountA,_amountB, 0,0, address(this), block.timestamp);

        emit Log("Amount A", amountA);
        emit Log("Amount B", amountB);
        emit Log("Liquidity",liquidity);
    }
}