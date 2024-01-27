// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct Todo {
  uint id;
  string description;
  bool completed;
}

contract TodoList {
  uint256 public numberOfTodos = 0;
  
  event CreateTodo(address indexed creator, uint256 indexed todoIndex, string description);

  mapping(uint => Todo) public todos;

  function createTodo(address creator, string memory description) public returns (uint256) {
    numberOfTodos++;
    todos[numberOfTodos] = Todo(numberOfTodos, description, false);
    emit CreateTodo(creator, numberOfTodos, description);
    return numberOfTodos;
  }

  function getTodoById(uint256 id) public view returns (Todo memory) {
    return todos[id];
  }

  function toggleCompleted(uint _id) public {
    Todo memory _todo = todos[_id];
    _todo.completed = !_todo.completed;
    todos[_id] = _todo;
  }

  function getNumberOfTodos() public view returns (uint256) {
      return numberOfTodos;
  }
}