package com.ezen.ex05;

interface Printable3{ void print(String s); }

public class Lambda3 {
	public static void main(String[] args) {
		Printable3 prn = new Printable3() {
			public void print(String s){ 
				System.out.println(s); }
		};	
		
		prn.print("java is lambda!!");
	}
}
