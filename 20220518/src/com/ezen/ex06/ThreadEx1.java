package com.ezen.ex06;

public class ThreadEx1 {
	public static void main(String[] args) {

		ThreadEx1_1 t1 = new ThreadEx1_1();
		
		t1.start();
		
		//람다 표식 ()->
		Runnable r = ()-> {
			for(int i=0; i<5; i++) {
				System.out.println(Thread.currentThread().getName());
				}
		};
		
	Thread t2 = new Thread(r); // 생성자 Thread(Runnable target)
		t2.start();
	}
}

class ThreadEx1_1 extends Thread{
	public void run() {
		for(int i =0; i<5; i++) {
			System.out.println(getName()); //조상인 Thread의 getName()을 호출 
		}
	}
}

class ThreadEx1_2 implements Runnable{
	public void run() {
		for(int i=0; i<5; i++) {
			System.out.println(Thread.currentThread().getName());
		}
	}
}