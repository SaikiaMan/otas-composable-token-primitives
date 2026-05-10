// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.20;

contract ComposableToken {
    mapping(address => bool) public verified;

    function verifyUser(address user) public {
        verified[user] = true;
    }

    function transfer(address to, uint256 amount) public view {
        require(verified[to], "Recipient not verified");
    }
}