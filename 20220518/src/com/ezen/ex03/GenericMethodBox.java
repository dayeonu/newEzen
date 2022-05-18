package com.ezen.ex03;

class Box<T>{
	private T ob;
	
	public void set(T o) {ob=o;}
	public T get() {return ob;}
}

class BoxFactory{
	//제네릭 메소드
 // 제네릭 메소드표시: <T>, Box<T> :반환형, T o :매배변수
	public static <T extends Number> Box<T> makeBox(T o){
		
		Box<T> box = new Box<T>();
		box.set(o);
		System.out.println("Box data:" + o.intValue()); 
		
		/*intValue()

		 static이 아니며 Integer 객체에서 int형 값을 뽑아내는 메소드이다
		 Integer는 (int Value와 String Value) 두 가지가 있다.

		*/

		return box;
	}
}

class UnBoxer{
	public static <T extends Number> T openBox(Box<T> box) {
		System.out.println("unBoxer Data :" + box.get().intValue());
		
		return box.get();
	}
}
public class GenericMethodBox {
	public static void main(String[] args) {

		Box<Integer> iBox = BoxFactory.makeBox(8989);
		
		int num = UnBoxer.openBox(iBox);//8989
		
		System.out.println("result : " + num);
	}

}
