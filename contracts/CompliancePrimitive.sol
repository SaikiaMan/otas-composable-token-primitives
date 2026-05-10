// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.20;

contract CompliancePrimitive {
    mapping(address => bool) public approved;

    function approve(address user) external {
        approved[user] = true;
    }

    function validate(address user) external view returns (bool) {
        return approved[user];
    }
}