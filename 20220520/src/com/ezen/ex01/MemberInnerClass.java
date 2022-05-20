package com.ezen.ex01;

public class MemberInnerClass {

	public static void main(String[] args) {

		Outer2 out1 = new Outer2();
		Outer2 out2 = new Outer2();

		Outer2.Member o1 = out1.new Member();
		Outer2.Member o2 = out2.new Member();
	
		o1.add(5);
		System.out.println(o1.get());
		
		o2.add(10);
		System.out.println(o2.get());
	}
}

// 아우터 안에 2가지 객체 
class Outer2{
	private int num=0;
	
	class Member{
		void add(int n) { num+=n;}
		int get() {return num;}
	}
}

