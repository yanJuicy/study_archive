package com.in28minutes.mockito.business;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.in28minutes.mockito.api.TodoServiceStub;

import api.TodoService;
import business.TodoBusinessImpl;

public class TodoBusinessImplStub {

	@Test
	public void testRetrieveTodosRelatedToSpring() {
		TodoService todoServiceStud = new TodoServiceStub();
		TodoBusinessImpl todoBusinessImpl = new TodoBusinessImpl(todoServiceStud);
		List<String> filteredTodos = todoBusinessImpl.retrieveTodosRelatedToSpring("Dummy");
		assertEquals(2, filteredTodos);
	}
	
	
	
}
