package com.ezen.ex07;

interface Calculate{
	int cal(int n1, int n2);
}

//ctrl + shift + {


class A implements Calculate{
	@Override
	public int cal (int n1, int n2){
		return n1 + n2;
	}
}
public class Lamda4 {
	public static void main(String[] args) {
		//람다

		Calculate c = (int n1 , int n2) -> { 
			return n1 + n2; };
			System.out.println( c.cal(5, 2));

			//리턴문에서는 중괄호 생략불가함 
			c = (n1 , n2) -> { return n1 + n2; };
			System.out.println( c.cal(10, 2));

			//리턴이 없어도 유추가 가능하면 중괄호 생략 가능함. 
			c = (n1 , n2) ->  n1 * n2;
			System.out.println( c.cal(10, 2));

			c = new A();
			System.out.println(c.cal(33, 2));
	}
}
