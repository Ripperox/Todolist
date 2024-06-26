// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract ToDoList{
    uint256 public taskCount=0;

    struct Task{
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    constructor() public{
        createTask("This is my first app");
    }
    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount]= Task(taskCount,_content,false);
    }

}