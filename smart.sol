// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract AdvancedStorage {
    mapping(address => uint256) private userNumbers;  // Lưu số của từng user

    // Hàm cập nhật số của user
    function setNumber(uint256 _number) public {
        userNumbers[msg.sender] = _number;
    }

    // Hàm đọc số của user
    function getNumber() public view returns (uint256) {
        return userNumbers[msg.sender];
    }
}
