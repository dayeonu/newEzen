package com.ezen.ex09;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.function.Supplier;

//Supplier<T>  매개변수는 없고, 반환값만 있음
public class SupplierEx {
									//() -> { 
									//Random rand = new Random(); 
									//return rand.nextInt(50);		// makeIntList(spr, 6);
	public static List<Integer> makeIntList( Supplier<Integer> s, int n){
		
		List<Integer> list = new ArrayList<Integer>();
		
		//6번 돈다. 
		for(int i=0; i<n; i++)
			list.add(s.get());
		
		return list;
	}

	public static void main(String[] args) {
		//입력은 없고, 출력만 있음 >>get 추상메서드로 사용했음 
		Supplier<Integer> spr = () -> { 
			Random rand = new Random(); 
				return rand.nextInt(50);
		};
		
		List<Integer> list = makeIntList(spr, 6);
			System.out.println(list);
		
		list = makeIntList(spr, 6);
		System.out.println(list);
		
		Supplier<Integer> s = ()-> (int)(Math.random()*100)+1;
		for(int i = 0; i<5; i++)
			System.out.println(s.get());
	}
}
