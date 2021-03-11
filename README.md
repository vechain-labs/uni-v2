This is a fork of several repositories from https://github.com/Uniswap/

All tests passed.

## `main` branch

Specific tweaks:
- Change Variable names of VEX and Vexchange
- `CREATE2` hash. 
- `chainId()` OPCODE call remains the same
- Compiler option `istanbul` remains the same.

This will **NOT** enable to be run on VeChain now because the EVM doesn't support it, yet.

But eventually it is the unified set of code that is deployed on VeChain after the EVM support `istanbul` is in place.

## `testnet` and `mainnet` branch
Based on `main` branch.

Specific tweaks: 
- `chainId()` tweak (fixed value) for different branches “testnet” and “mainnet”.
- `istanbul` compiler option change to `constantinpole`.
- `CREATE2` hash change of respective files.