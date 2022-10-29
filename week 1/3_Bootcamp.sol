// SPDX-License-Identifier: None
pragma solidity 0.8.17;

contract BootcampContract {

    uint256 number;
    address deployer = msg.sender;

    // constructor() {
    // }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }

    function returnDead() public view returns (address) {
        // address msg.sender = 0x000000000000000000000000000000000000dEaD;
        return deployer;
    }
}