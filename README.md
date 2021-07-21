# Uniswap V2 Fork

## Credits
This is a fork of several repositories from https://github.com/Uniswap/

All tests passed.

# For Developers
```bash
/uniswap-lib            # util libraries
/uniswap-v2-core        # core contracts for assets
/uniswap-v2-periphery   # surrounding contract for user interface
```

```bash
make install # install dependencies.
make compile # Compile all contracts.
make test # Run all the tests.
```

# Branches in this repo:

## `main` branch

What is changed:
- Change variable names of LP token `symbol` and `name`. (uniswap-v2-core/contracts/UniswapV2ERC20.sol)
- `CREATE2` hash. (uniswap-v2-periphery/contracts/libraries/UniswapV2Library.sol)

What remains:
- `chainId()` OPCODE call remains the same
- Compiler option `istanbul` remains the same.

This will **NOT** enable to be run on VeChain now because the EVM doesn't support it, yet.

But eventually it is the unified set of code that is deployed on VeChain after the EVM support `istanbul` is in place.

# Below Should NOT Be Used

## `testnet` branch
Based on `main` branch.

Specific tweaks: 
- `chainId()` tweak (fixed value) for different network: “testnet” `0x27`.
- `istanbul` compiler option change to `constantinpole`.
- `CREATE2` hash change of respective files.
- Test cases changes to include `chainId` as a parameter.

## `mainnet` branch
Based on `testnet` branch

Specific tweaks:
- `chainId()` tweak (fixed value) for different network: “mainnet” `0x4a`.
- Compiler change same as `testnet` branch.
- `CREATE2` hash change of respective files.
- Test cases changes same as on `testnet` branch.

## Disclaimer
Redistributions of source code must retain this list of conditions and the following disclaimer.

Neither the name of VeChain (VeChain Foundation) nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.