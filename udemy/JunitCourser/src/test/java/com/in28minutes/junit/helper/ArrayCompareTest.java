package com.in28minutes.junit.helper;

import static org.junit.Assert.assertArrayEquals;

import java.util.Arrays;

import org.junit.Test;

public class ArrayCompareTest {

	@Test
	public void testArraySort() {
		int [] numbers = {12, 3, 4, 1};
		int [] expected = {1, 3, 4, 12};
		
		Arrays.sort(numbers);
		
		assertArrayEquals(numbers, expected);
	}
	
	@Test(expected = NullPointerException.class)
	public void testArraySort_NullArray() {
		int [] numbers = null;
		Arrays.sort(numbers);
	}
	
	@Test(timeout = 1000)
	public void testSort_Performance() {
		int array[] = {12, 23, 4};
		for (int i=1; i<=1000000; i++) {
			array[0] = i;
			Arrays.sort(array);
		}
	}
	
	
}
