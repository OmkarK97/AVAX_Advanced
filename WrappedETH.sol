// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./ERC20.sol";


contract wrappedToken {
  address token;
  
  constructor(address _token){
    token = _token;
  }

  receive() external payable {}

  function WrappToken() public payable  {
    uint256 value = msg.value;
    ERC20(token).mint(value);
    ERC20(token).transfer(msg.sender,value);
  }

  function unWrappToken(uint256 _amount) public{
    ERC20(token).transferFrom(msg.sender,address(this),_amount);
    (bool sent,) = payable(msg.sender).call{value: _amount}("");
  }
}
