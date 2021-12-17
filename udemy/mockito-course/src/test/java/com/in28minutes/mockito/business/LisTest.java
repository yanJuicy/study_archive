package com.in28minutes.mockito.business;

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
	
}
