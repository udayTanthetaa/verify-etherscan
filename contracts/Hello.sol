// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Hello {
    address public owner;
    string public greet;
    string public name;

    constructor(string memory _greet, string memory _name) {
        greet = _greet;
        name = _name;
    }

    function setGreet(string memory _greet) public {
        require(msg.sender == owner, "Only owner can call this.");
        greet = _greet;
    }
}