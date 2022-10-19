// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract Score {

    uint256 public score;
    address owner;

    modifier onlyOwner {
        if (msg.sender == owner) {
            _; // this underscore represent whatever function this only onwer will 'modify' or wrap around
        }
    }

    constructor() {
        owner = msg.sender;
    }

    function setScore(uint256 _newScore) public {
        score = _newScore;
    }


    function getScore() public view returns (uint) {
        return score;
    }


}