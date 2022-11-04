// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

contract MoodDiary{
    string mood;

    function setMood(string memory _mood) public {
        require(bytes(_mood).length != 0, "Mood cannot be empty!");
        mood = _mood;
    }

    function getMood() public view returns(string memory){ 
        if(bytes(mood).length ==0)
        {
            return 'Mood is not set';
        }
        return mood;
    }

    
}