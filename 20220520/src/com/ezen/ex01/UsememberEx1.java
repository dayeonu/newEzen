package com.ezen.ex01;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

interface Printable{
	void print();
}
class Papers{

	private String con;
	public Papers(String s) {con = s;}
	public Printable getPrinter() {return new Printer2();}

	//외부에 클래스를 노출시키고 싶지 않을 ㄸㅐ 사용,, 
	private class Printer1 implements Printable{
	
		public void print() {
			System.out.println("흑백:" + con);
		}
	}

	private class Printer2 implements Printable{
		
		public void print() {
			System.out.println("칼라:" + con);
		}
	}

}
public class UsememberEx1 {
	public static void main(String[] args) {
		Papers p = new Papers("Message Java!");
		Printable prn = p.getPrinter();
		prn.print();
		
		List<String> list = new ArrayList<>();
		list.add("abc");
		list.add("def");
		list.add("gh");
		
		Iterator<String> it = list.iterator(); // 위와 같은 기능 객체를 생성해서 돌려준다. 
		//	prn.print();처럼 받아주면 됨
	
		while(it.hasNext()) {System.out.println(it.next() + " ");
	}
}
}