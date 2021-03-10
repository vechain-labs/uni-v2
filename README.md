This is a fork of several repositories from https://github.com/Uniswap/

All tests passed.

## `main` branch

Change Variable names, CREATE2 hash. But “chainId()” OPCODE call remains the same + Compiler option `istanbul` remain the same.

This will NOT enable to be run on VeChain now because the EVM doesn't support it, yet.

But eventually it is the unified set of code that is deployed on VeChain after the EVM support is in place.

## `testnet` and `mainnet` branch
Based on `tweak` branch.

Specific tweak: “chainId” tweak (fixed value), for different branches “testnet” and “mainnet”, + Constantinpole change for Istanbul + CREATE2 hash change.