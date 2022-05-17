package com.ezen.ex05;

class Box<T>{
	protected T ob;
	public T getOb() {return ob;}
	public void setOb(T ob) {this.ob = ob;	}
}

class SteelBox<T> extends Box<T>{
	public SteelBox(T t){ ob = t; }
}
public class GenericInheritance {

	public static void main(String[] args) {
		Box<Integer> iBox = new SteelBox<>(1234); //<Integer>타입이 일치해야함. 스트링타입은 맞지 않으므로 불가
//		Box<Integer> iBox = new SteelBox<>("simple"); <Integer>타입이 일치해야함. 스트링타입은 맞지 않으므로 불가
		Box<String> sBox = new SteelBox("simple");
		
		System.out.println(iBox.getOb());
		System.out.println(sBox.getOb());
	}

}
