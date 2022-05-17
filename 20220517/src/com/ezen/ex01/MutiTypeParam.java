//지네릭스 

package com.ezen.ex01;


/* 
 * E : Element
 * K : key
 * N : Number
 * V : Value
 */


// 지네릭스클래스 만든 거 
class DBox <L,R>{
	private L left;
	private R right;

	public void set (L l , R r) {

		left = l;
		right = r;

	}
	@Override
	public String toString() {
		return left + "&" + right;
	} // 형변환 타입변환 
}

public class MutiTypeParam {
	public static void main(String[] args) {

	DBox<String, Integer> box=  new DBox<String, Integer>();
	// int 로 적으면 오류,  Integer 로 사용
	
	box.set("Apple", 20);
	System.out.println(box);
	box.set("Apple2", new Integer(50));
	System.out.println(box);
	}
}
