// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract anyNumber {
    uint256 public default_number;

    function modifyNumber (uint256 _newNumber) public {
        default_number = _newNumber;
    }

    function getNumber() public view returns (uint256) {
        return default_number;
    }
}