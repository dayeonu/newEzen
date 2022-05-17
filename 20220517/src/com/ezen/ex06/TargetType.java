package com.ezen.ex06;


class Box<T>{
	protected T ob;
	public T getOb() {return ob;}
	public void setOb(T ob) {this.ob = ob;}
	
}

class EmptyBoxFactory{
	
	public static <T> Box<T> makeBox(){ //제네릭 메소드
		Box<T> box = new Box<T>();
		return box;
	}
}
public class TargetType {
	public static void main(String[] args) {
	
		Box<Integer> iBox = EmptyBoxFactory.<Integer>makeBox(); //static 메소드이므로 이름으로 호출가능 
		
		iBox.setOb(25);
		
		System.out.println(iBox.getOb());
	}

}
