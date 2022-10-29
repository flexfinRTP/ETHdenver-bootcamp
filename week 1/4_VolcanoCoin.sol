// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract VolcanoCoin {

    uint public volcanoCoinTotalSupply = 10000;
    address public owner;
    uint public balances;

    mapping(address=>uint) balances;
    mapping(uint=>address) payments;

    struct Balances{
        address addr;
        uint256 amount;
    }
    struct Paymnent{
        uint256 amount;
        address addr;
    }

    modifier onlyOwner {
        if (msg.sender == owner) {
            _; // this sunderscore represent whatever function this only onwer will 'modify' or wrap around
        }
    }

    event totalSupplyIncreased(uint, address indexed);
    event VolcanoCoinTransferred(uint, address);

    constructor(address, uint) {
        owner = msg.sender;
        address owner = volcanoCoinTotalSupply;
    }


    getTotalSupply() public view returns(uint) {
        return volcanoCoinTotalSupply;
    }

    getBalances() public view returns(uint) {
        return balances;
    }

    increaseTotalSupplyByNumber(uint _newTotalSupply) public onlyOwner {
        totalSupply = _newTotalSupply
        totalSupply+1000;
        emit totalSupplyIncreased(_newTotalSupply, msg.sender)
    }

    transferVolcanoCoin(uint balances) public returns(uint, address) {
        address msg.sender balances = 

        emit VolcanoCoinTransferred(balances, address)
    }
    // Don't need sender's address because the contract is called to send the msg.owner(no matter who the sender is)
    // If you included a sender address it would 'hardcode' the contract to only send the balance between the contract and hardcoded address.

}