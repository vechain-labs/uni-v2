// SPDX-License-Identifier: GPL-3.0-only
pragma solidity =0.5.16;

interface ILoyalty {
    function addPoints (address _who, uint256 _amount) external;
    function removePoints (address _who, uint256 _amount) external;
}