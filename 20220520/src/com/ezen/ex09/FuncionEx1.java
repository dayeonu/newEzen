package com.ezen.ex09;

import java.util.function.Function;

public class FuncionEx1 {

	public static void main(String[] args) {

		Function<String, Integer> f = s ->s.length(); //문자열길이를 구해줌 
		System.out.println(f.apply("java Function"));
		System.out.println(f.apply("java"));
	}
}
