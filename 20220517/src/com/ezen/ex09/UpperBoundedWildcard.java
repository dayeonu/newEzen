// 1.5 와일드 카드

package com.ezen.ex09;
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
	public static void peekBox(Box<? super Integer> box) { //와일드 카드: 하한제한-> T와 그 조상들만 가능  
		System.out.println(box); 
	}
}
public class UpperBoundedWildcard {
	public static void main(String[] args) {
		Box<Integer> box = new Box<>();
		box.setOb(1234);
		System.out.println(box.getOb());
//		Unboxer.peekBox(box);	//Number 가 있어서 타입이 안맞아 호출불가함. 
	}
}