package com.ezen.ex08;

import java.util.Random;

interface Cenerator{
	int rand(); 
}


public class Lamda4 {
	public static void main(String[] args) {
		//람다
		
		Cenerator gen = () -> {
			Random rand = new Random();
			return  rand.nextInt(46);
			
		};
	
		int num = gen.rand();
		int num1 = gen.rand();
		System.out.println(num + " , " + num1);
}
}