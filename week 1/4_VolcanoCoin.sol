// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract VolcanoCoin {

    uint public volcanoCoinTotalSupply = 10000;
    address public owner;

    mapping(address=>uint) abc;
    mapping(address=>uint) def;

    struct Paymnent{}

    modifier onlyOwner {
        if (msg.sender == owner) {
            _; // this sunderscore represent whatever function this only onwer will 'modify' or wrap around
        }
    }

    event totalSupplyIncreased(uint, address indexed);

    constructor() {
        owner = msg.sender;
    }


    getTotalSupply() public view returns(uint) {
        return volcanoCoinTotalSupply;
    }

    increaseTotalSupplyByNumber(uint _newTotalSupply) public onlyOwner {
        totalSupply = _newTotalSupply
        totalSupply+1000;
        emit totalSupplyIncreased(_newTotalSupply, msg.sender)
    }

    transferVolcanoCoin() {

    }
    // Don't need sender's address because the contract is called to send the msg.owner(no matter who the sender is)
    // If you included a sender address it would 'hardcode' the contract to only send the balance between the contract and hardcoded address.

}