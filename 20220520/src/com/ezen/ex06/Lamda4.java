package com.ezen.ex06;

interface Calculate{
	void cal(int n1, int n2);
}

class Cal implements Calculate{
	
	@Override
	public void cal(int n1, int n2) {
		System.out.println(n1+n2);
	}
}
interface Printable4{ void print(String s); }
//
//class Printer implements Printable4{
//
//	@Override
//	public void print(String s) {
//		System.out.println(s);
//	}
// }    람다식 사용하면 위 코드를 간결하게 사용할 수있음 
public class Lamda4 {
	public static void main(String[] args) {
		//람다
		
		Printable4 prn;
		
		prn  = (String s) -> { System.out.println(s); };
		prn.print("java is lamda1");

		prn = (String s) ->{ System.out.println(s); };
		prn.print("java is lamda2");

		// 타입도 생략 가능.   { void print(String s); } 요기서 확인되니까 
		prn = (s) ->{ System.out.println(s); };
		prn.print("java is lamda3");

		prn = (s) ->{ System.out.println(s); };
		prn.print("java is lamda4");

		Calculate c = new Cal();
		c.cal(10, 10);
		
		//람다식 구현
		c = (int n1, int n2) -> { System.out.println(n1 + n2); };
		c.cal(5, 2);
	
		//람다식 구현
		c = (n1, n2) -> { System.out.println(n1 * n2); };
		c.cal(2, 2);

		//자료형 생략가능. 사칙연산도 변경 가능. 코드 분석이 쉽고 직관적이다.
		c = (n1, n2) ->  System.out.println(n1 - n2); 
		c.cal(7, 2);
		
	}
}
