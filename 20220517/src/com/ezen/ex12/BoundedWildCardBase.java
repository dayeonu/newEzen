// 1.5 와일드 카드
// 와일드 카드 사용하는 이유? ojbect get만 쓰고 set은 사용하지 말라,,,
// public static <T> void copy(
// List<? super T> dest, List<? extends T> src)
package com.ezen.ex12;
class Box<T>{
	protected T ob;
	public T getOb() {return ob;}
	public void setOb(T ob) {this.ob = ob;}

	@Override
	public String toString() {
		return ob.toString();
	}
}
class Toy{
	public String toString() {
		return "I am Toy";
	}
}
class Robot extends Toy{}

class BoxHandler{										// Box전달 대상은 Toy, Robot가능 
	public static void outBox(Box<? extends Toy> box) { // get만 가능, 내용수정불가. 읽기만가능 Toy 또는 Toy를 상속받은 자손들만 가능 
		Toy t = box.getOb();	 //box>> Box<Toy> or Box<Robot>
		System.out.println(t);

		//box.setOb(new Toy()); // <Robot> 을 대입한 경우 타입이 맞지않아 오류. The method outBox(Box<Robot>) in the type BoxHandler is not applicable for the arguments (Box<Toy>)
	}
	public static void inBox(Box<Toy> box, Toy t) {	//set만 가능 
		box.setOb(t);	//Object
		
		t = box.getOb();
	}
}
//	Toy t2 = box.getOb();
//	system.out.println(t2);

public class BoundedWildCardBase {
	public static void main(String[] args) {
		Box<Toy> box = new Box<>();
		BoxHandler.inBox(box, new Toy()); //setOb -->Toy t  // "i am toy"
	
		BoxHandler.outBox(box);
	}
}