// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    function setValue(uint256 _value) public onlyOwner {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    function assertValue(uint256 _value) public view {
        assert(_value == value);
    }

    function revertIfNotOwner() public view {
        if (msg.sender != owner) {
            revert("Caller is not the owner");
        }
    }
}

