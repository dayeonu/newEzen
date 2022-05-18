package com.ezen.ex05;

public class MakeThreadMuiteEx2 {

	public static void main(String[] args) {

		Runnable task1 = () -> { // 익명 클래스라고 불리는 람다 식, 클래스 이름이 없다. 
			try {
				for(int i = 0; i<20; i++) {
					if( i%2 == 0)
						System.out.println(i + " ");
				
					Thread.sleep(1000);
				}
				} catch ( Exception e) {
				e.printStackTrace();
			}
		};
	
		Runnable task2 = () -> { // 익명 클래스라고 불리는 람다 식, 클래스 이름이 없다. 
			try {
				for(int i = 0; i<20; i++) {
					if( i%2 == 1)
						System.out.println(i + " ");
					Thread.sleep(3000);
				}
				}catch ( Exception e) {
				e.printStackTrace();
			}
		};
		// 쓰레드가 일정하게 돌지 않는다 항상 다르다. 
		Thread t1 = new Thread(task1);
		Thread t2 = new Thread(task2);
		t1.start();
		t2.start();
	
	}

}
