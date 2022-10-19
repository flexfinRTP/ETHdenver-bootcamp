// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract Score {

    uint256 public score;
    address public owner;

    mapping(address => uint256) scoreList;
    address[] keyList;

    uint256[] allPossibleNumber;
    uint256[9] oneDigitNumber;

    struct Funder {
        address addr;
        uint256 amount;
    }

    Funder giver;

    modifier onlyOwner {
        if (msg.sender == owner) {
            _; // this sunderscore represent whatever function this only onwer will 'modify' or wrap around
        }
    }

    event scoreSet(uint256, address indexed);


    constructor() {
        owner = msg.sender;
    }

    function setScore(uint256 _newScore) public onlyOwner {
        score = _newScore;
        giver.addr = msg.sender;
        giver.amount = 49;
        scoreList[msg.sender] = 53;
        // allPossibleNumber.length();
        // allPossibleNumber.push(score);
        //uint256 score2 = oneDigitNumber[3];
        emit scoreSet(_newScore, msg.sender);
    }


    function getScore() public view returns (uint) {
        return score;
    }

    function getUserScore(address user) public view returns (uint256){
        return scoreList[user];
    }

}

