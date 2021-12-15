// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.5.0;

interface IVthoClaimable {
    function claimVTHO(address to, uint256 amount) external returns (bool);
}