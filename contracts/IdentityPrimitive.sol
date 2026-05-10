// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.20;

contract IdentityPrimitive {
    mapping(address => bool) public verified;

    function verify(address user) external {
        verified[user] = true;
    }

    function isVerified(address user) external view returns (bool) {
        return verified[user];
    }
}