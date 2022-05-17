// 1.5 와일드 카드

package com.ezen.ex10;
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
	public static void peekBox(Box<? super Integer> box) { //Integer, Number, Object 된다. 와일드 카드: 하한제한-> T와 그 조상들만 가능  
		System.out.println(box); 
	}
}
public class LowerrBoundedWildcard {
	public static void main(String[] args) {
		Box<Integer> box = new Box<>();
		box.setOb(1234);
		Unboxer.peekBox(box);	

		Box<Number> box2 = new Box<>();
		box2.setOb(12.34);
		Unboxer.peekBox(box2);	
		
		Box<Object> box3 = new Box<>();
		box3.setOb("string");
		Unboxer.peekBox(box3);	
	
	
	
	
	}
}