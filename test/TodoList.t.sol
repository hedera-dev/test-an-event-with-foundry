// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/TodoList.sol";

contract TodoListTest is Test {
  TodoList public todoList;
  // Step (1) - Define the expected event
   /* ... */

      function setUp() public {
        todoList = new TodoList();
    }  

   function test_createTodo_returnsNumberOfTodosIncrementedByOne() public {

     uint256 numberOfTodosBefore = todoList.getNumberOfTodos();

     uint256 numberOfTodosAfter = todoList.createTodo(address(this), "A new todo for you!");

     assertEq(numberOfTodosAfter, (numberOfTodosBefore + 1), "create todo test");
   }

   function test_emit_createTodoEvent() public {
    // Step (2) - Get the current number of todos
    /* ... */
    
    // Step (3) - Specify the event data to test
    /* ... */

    // Step (4) - Emit the expected event
    /* ... */

    // Step (5) - Execute the contract function that emits the event
    /* ... */
   }
}