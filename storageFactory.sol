//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./simpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        SimpleStorage ss = new SimpleStorage();
        simpleStorageArray.push(ss);
    }
    function sfStore(uint index, uint favNum) public {
        //create a temporary simpleStorage variable
        SimpleStorage simpleStorage = simpleStorageArray[index];
        //put the favNum value provided as parameter into this variable
        simpleStorage.store(favNum);
        //put this variable into the array again
    }
    function sfGet(uint index) view public returns(uint) {
        SimpleStorage simpleStorage = simpleStorageArray[index];
        return simpleStorage.retrieve();
    }
}
