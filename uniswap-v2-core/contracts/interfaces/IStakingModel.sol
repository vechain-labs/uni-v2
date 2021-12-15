// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.5.0;

interface IStakingModel {
    function vetBalance(address addr) external view returns (uint256 amount);
    function vthoBalance(address addr) external view returns (uint256 amount);    
}