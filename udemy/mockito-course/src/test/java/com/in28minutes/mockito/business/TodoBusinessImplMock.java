package com.in28minutes.mockito.business;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.Arrays;
import java.util.List;

import org.junit.Test;

import api.TodoService;
import business.TodoBusinessImpl;

public class TodoBusinessImplMock {

	@Test
	public void testRetrieveTodosRelatedToSpring() {
			
		TodoService todoServiceMock = mock(TodoService.class);
		
		List<String> todos = Arrays.asList("Learn Spring MVC", "Learn Spring", "Learn to Dance");
		
		when(todoServiceMock.retrieveTodos("Dummy")).thenReturn(todos);
		
		TodoBusinessImpl todoBusinessImpl = new TodoBusinessImpl(todoServiceMock);
		List<String> filteredTodos = todoBusinessImpl.retrieveTodosRelatedToSpring("Dummy");
		assertEquals(2, filteredTodos.size());
	}
	
	@Test
	public void testRetrieveTodosRelatedToSpring_usingBDD() {
			
		// given
		TodoService todoServiceMock = mock(TodoService.class);
		
		List<String> todos = Arrays.asList("Learn Spring MVC", "Learn Spring", "Learn to Dance");
		
		given(todoServiceMock.retrieveTodos("Dummy")).willReturn(todos);
		
		TodoBusinessImpl todoBusinessImpl = new TodoBusinessImpl(todoServiceMock);
		
		// when
		List<String> filteredTodos = todoBusinessImpl.retrieveTodosRelatedToSpring("Dummy");
		
		// then
		assertThat(filteredTodos.size(), is(2));
			
	}
	
	@Test
	public void testDeleteTodosNotRelatedToSpring_usingBDD() {
			
		// given
		TodoService todoServiceMock = mock(TodoService.class);
		
		List<String> todos = Arrays.asList("Learn Spring MVC", "Learn Spring", "Learn to Dance");
		
		given(todoServiceMock.retrieveTodos("Dummy")).willReturn(todos);
		
		TodoBusinessImpl todoBusinessImpl = new TodoBusinessImpl(todoServiceMock);
		
		// when
		todoBusinessImpl.deleteTodosNotRelatedToSpring("Dummy");
		
		// then
		verify(todoServiceMock).deleteTodo("Learn to Dance");
	}
}
