//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract SampleContract {
    string public myString = "Sefa Tuncer";

    function updateString(string memory _newString) public payable {
        if(msg.value == 2 wei){
            myString = _newString;
        }else{
            payable(msg.sender).transfer(msg.value);
        }
    }
}