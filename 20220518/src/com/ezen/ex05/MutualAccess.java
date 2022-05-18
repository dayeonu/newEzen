package com.ezen.ex05;

class Counter{
	int count=0;

	//동기화, 교착 문제점 있다. 그래서 synchronized 를 이용해 '0'으로 만들어 준다. 
	// 두가지 작업을 동시에 하지 못하도록 한 작업은 잠시 대기하게 한다. 
	public void increment() {count++;
	synchronized(this) {
		count++;
	} // 동기화 블럭. 멀티태스킹 시에는 동기화 블럭을 이용해야 한다.  
	System.out.println("1111");
	System.out.println("1111");
	System.out.println("1111");
	
	} //핵심기능만 동기화 해주면 아래 출력까지 작업을 할때까지 기다리지 않아도 된다. 

	synchronized public void decrement() {count--;}
	public int getcount() { return count;}
}

public class MutualAccess {
	public static Counter cnt = new Counter();
	public static void main(String[] args) throws Exception {

		Runnable task1 = ()-> { //Runnable 구현한 인스턴스 생성
			for(int i = 0; i<1000; i++){
				cnt.increment();
			}
		};
		Runnable task2 = ()-> {
			for(int i = 0; i<1000; i++){
				cnt.decrement();
			}
		};

		Thread t1 = new Thread(task1);
		Thread t2 = new Thread(task2);

		t1.start();
		t2.start();
		t1.join(); //t1이 참조하는 쓰레드종료까지 대기. 
		t2.join();
		
		System.out.println(cnt.getcount());
	}
}