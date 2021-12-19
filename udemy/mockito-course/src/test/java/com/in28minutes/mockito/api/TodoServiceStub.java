package com.in28minutes.mockito.api;

import java.util.Arrays;
import java.util.List;

import api.TodoService;

public class TodoServiceStub implements TodoService {

	public List<String> retrieveTodos(String user) {
		return Arrays.asList("Learn MVC", "Learn Spring", "Learn Dance");
	}

	public void deleteTodo(String todo) {
		
	}

}
