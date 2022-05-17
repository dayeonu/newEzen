package com.ezen.ex03;

//<T>에 올 수 있는 대상은 Number이거나 Number를 상속한 객체만 가능하다. 

//java api를 검색하기  https://docs.oracle.com/javase/8/docs/api/

/*
 * java.lang
Class Number
java.lang.Object
java.lang.Number
All Implemented Interfaces:
Serializable
Direct Known Subclasses:
AtomicInteger, AtomicLong, BigDecimal, BigInteger, Byte, Double, 
DoubleAccumulator, DoubleAdder, Float, Integer, Long, LongAccumulator, 
LongAdder, Short
 까지 타입만 사용됨 ~~~~~~~
 */
class Box<T extends Number>{
	private T ob;

	public void set (T o) {
		ob = o;
	}

	public T get() {
		return ob;
	}
}
// 아래 코드는 지정된 숫자의 값을 int로 반환해주는데, <T>형태였을 경우에는 어떤 타입이 들어올지 모르기에 불가하고
// Number상속을 하면 사용가능하게 된다. 
//	public int toIntValue();
//		return ob.intValue();

	
public class BoundeBox{
	public static void main(String[] args) {
		
		Box<Double> aBox = new Box<>();
		//객체면 어떤 형태로든 다 사용가능함. 
		aBox.set(100.0);
//		Box<String> sBox = new Box();
//		class Box<T extends Number>{ 
//		위와 같은 조건의 박스 타입은  
//		String타입을 상속하지 않기 때문에 호출 불가함. 
		System.out.println(aBox.get());
	}
}