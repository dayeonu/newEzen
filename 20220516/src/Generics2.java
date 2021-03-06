public class Generics2 {
	public static void main(String[] args) {

		Box2<Apple2> aBox = new Box2<Apple2>();
		
		Box2<Orange2> oBox = new Box2<Orange2>();
		
		aBox.setOb(new Apple2());
		oBox.setOb(new Orange2());
		
		Apple2 ap = aBox.getOb();
		Orange2 or = oBox.getOb();
		
		System.out.println(ap);
		System.out.println(or);

//		aBox.setOb("new Apple2()");
	}
}

class AppleBox2{
	Apple2 apple;

	public Apple2 getApple() {
		return apple;
	}

	public void setApple(Apple2 apple) {
		this.apple = apple;
	}
	
}
class Box2<T>{	//<apple2> , <Orange2> 가 <T> 자리에 들어가는 것 
	private T ob;

	public T getOb() {
		return ob;
	}
	public void setOb(T ob) { 
		this.ob = ob;
	}
}

class Apple2{
	@Override
	public String toString() {
		return "I am apple";
	}
}
class Orange2{
	@Override
	public String toString() {
		return "I am orange";
	}
}

