package com.ezen.ex04;

class Box<T>{
	private T ob;
	
	public void set(T o) {ob = o;}
	public T get() {return ob;}

}
// 제네릭 메소드표시: <T>, Box<T> :반환형, T o :매배변수

public class GenericMethodBox {
	public static <T extends Number> void swapBox(Box<T> box1, Box<T> box2){
	
		T temp = box1.get();
		
		box1.set(box2.get());
		
		box2.set(temp);
	}
	public static void main(String[] args) {

		Box<Integer> box1 = new Box<>();
		box1.set(99);
		
		Box<Integer> box2 = new Box<>();
		box2.set(55);
		System.out.println("before :" +box1.get() + " & " + box2.get());
		
		swapBox(box1,box2);
		System.out.println("after :" + box1.get() + " & " + box2.get());
	}
	}
	/* 출력
	before : 99 & 55
	after : 55 & 99

	위 코드가 실행되도록 swapBox메서드 정의했다. 단 Box<T> 인스턴스 인자를 전달받을 수 있도록 정의
	그리고 이 Box<T> 인스턴스는 T는 Number 또는 이를 상속하는 하위 클래스만 받을 수 있도록 제한할 것 

	*/