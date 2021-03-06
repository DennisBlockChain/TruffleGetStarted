// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;


contract Adoption {
address[16] public adopters;

//function adopting a pet
function adopt(uint256 petId) public returns(uint256){
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    //retrieving the adopters
    function getAdopters() public view returns (address[16] memory){
        return adopters;
    }
}