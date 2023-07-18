// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Prati_Token{
    string public tokenName = "PRATI";
    string public Symbol = "PAT";
    uint public totalSupply = 25;

    address owner;

    mapping(address => uint) balance;

    constructor(){
        owner = msg.sender;
    }

    function NewBalance() external view returns (uint){
        return balance[msg.sender];
    }

    function MintToken(uint _amount) public  {
        require(msg.sender == owner,"Owner is only allowed to mint token");
        balance[mes.sender] += _amount;
        totalSupply += _amount;
    }

     function BurnToken(uint _amount) public  {
        if(balance[msg.sender] >= _amount){
        balance[msg.sender] -= _amount;
        totalSupply -= _amount;
        }
    }

    function TransferToken(address _address, uint _amount) public{
        require(balance[msg.sender] >= _amount,"less  balance available in the account to be transferred");
        balance[_address] += _amount;
        balance[msg.sender] -= _amount;
        totalSupply -= _amount;
        
    }
}
