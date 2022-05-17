package com.ezen.ex07;

class Box<T>{
	protected T ob;
	public T getOb() {return ob;}
	public void setOb(T ob) {this.ob = ob;}

	@Override
	public String toString() {
		return ob.toString();
	}
}


class Unboxer{
	public static <T> T openBox(Box<T> box) {
		return box.getOb();
	}
	public static <T> void peekBox(Box<T> box) {
		System.out.println(box); //ob를 찎으려고 함. Box<T> 를 사용한 이유? Box<Object>
			// 타입이 Box<Object> 여야 함 
	}
}
public class WildcarUnBoxer {

	public static void main(String[] args) {
		Box<String> box = new Box<>();
		box.setOb("apple");
		Unboxer.peekBox(box);	//주소값?
	}

}
