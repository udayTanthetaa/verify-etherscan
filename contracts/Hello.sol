// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Hello {
    string public greet;

    function getGreet() public view returns(string memory) {
        return greet;
    }

    function setGreet(string memory _greet) public {
        greet = _greet;
    }
}