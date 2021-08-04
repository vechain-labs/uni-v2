// SPDX-License-Identifier: GPL-3.0-only
pragma solidity =0.5.16;

import './interfaces/IERC20.sol';
import './libraries/SafeMath.sol';

// LoyaltyERC20 includes functions in Loyalty,
// Plus features of tokenize the contribution as ERC20 token.

contract LoyaltyERC20 is Loyalty, IERC20 {
    
}