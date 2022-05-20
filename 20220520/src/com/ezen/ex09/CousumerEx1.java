package com.ezen.ex09;

import java.util.function.Consumer;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;

public class CousumerEx1 {

	public static void main(String[] args) {
		
	Consumer<String> c = s -> System.out.println(s);

	c.accept("consumer!!");
	c.accept("java consumer!!");
	
				// String타입과 일치해야함 , i는 int형이어야 함. 
	ObjIntConsumer<String> c2 = (s,   i) -> System.out.println(i+ ", " + s);
	ObjDoubleConsumer<String> c3 = (s,   i) -> System.out.println(d + ", " + s);
	
	int n = 1;
	Double d = 1.0;
	
	c3.accept("toy", d++);
	c3.accept("robot", d++);
	c3.accept("box", d++);
	
	c2.accept("toy", n++);
	c2.accept("robot", n++);
	c2.accept("box", n++);
	
	}
}
