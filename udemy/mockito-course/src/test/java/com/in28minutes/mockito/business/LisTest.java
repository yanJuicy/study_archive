package com.in28minutes.mockito.business;

import static org.hamcrest.CoreMatchers.any;
import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.awt.List;

import org.junit.Test;

public class LisTest {

	@Test
	public void letsMockListSizeMethod() {
		List listMock = mock(List.class);
		when(listMock.getItemCount()).thenReturn(2);
		assertEquals(2, listMock.getItemCount());	
	}
	
	@Test
	public void letsMockListSize_ReturnMultipleValues() {
		List listMock = mock(List.class);
		when(listMock.getItemCount()).thenReturn(2).thenReturn(3);
		assertEquals(2, listMock.getItemCount());
		assertEquals(3, listMock.getItemCount());
	}
	
	@Test
	public void letsMockListGet() {
		List listMock = mock(List.class);
		when(listMock.getItem(0)).thenReturn("in28Minutes");
		
		assertEquals("in28Minutes", listMock.getItem(0));
		assertEquals(null, listMock.getItem(1));
	}
	
	@Test(expected = RuntimeException.class)
	public void letsMockList_throwAnExcpetion() {
		List listMock = mock(List.class);
		
		when(listMock.getItem(0)).thenThrow(new RuntimeException("Something"));
		
		listMock.getItem(0);
	}
	
}
