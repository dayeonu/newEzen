// 1.5 와일드 카드

package com.ezen.ex08;
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
	public static void peekBox(Box<?> box) { //와일드 카드 
		System.out.println(box); //ob를 찎으려고 함. Box<T> 를 사용한 이유? Box<Object>
			// 타입이 Box<Object> 여야 함 
			// 그러나 와일드 카드를 쓰면..........?
	}
}
public class WildcarUnBoxer {

	public static void main(String[] args) {
		Box<Integer> box = new Box<>();
		box.setOb(20000);
		Unboxer.peekBox(box);	//주소값?
	}
}