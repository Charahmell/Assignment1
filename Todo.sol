// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract user {
    struct TodolistItem {
        string task;
        bool Iscompleted;
    }

    TodolistItem[] public Todolist;

    function addActivity ( string memory _Activity) public {
        Todolist.push(TodolistItem({task: _Activity, Iscompleted: false}));
    }
    function getTodolist () public view returns (TodolistItem[] memory) {
        return Todolist;
    }
    function  completedActivity(uint256 _completed) public {
        Todolist[_completed].Iscompleted = true;
    }

}