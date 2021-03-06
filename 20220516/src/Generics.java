public class Generics {
	public static void main(String[] args) {

		Box aBox = new Box();
		Box oBox = new Box();
		
		aBox.setOb(new Apple());
		oBox.setOb(new Orange());
		
		Apple ap = (Apple)aBox.getOb();
		System.out.println(ap);
		
		Orange or =(Orange)oBox.getOb(); //오브젝 타입으로 형변환 해줌 자손-> 부모 
		System.out.println(or);
		
		AppleBox ap2 = new AppleBox();
		ap2.setApple(new Apple());

		aBox.setOb("apple"); //string 타입 
		aBox.setOb(new Apple()); //string 타입 
		oBox.setOb("orange");
		
		Apple ap4 = (Apple)aBox.getOb(); // 가져올 때 문제점, string타입이 아니라서 불러오기 실패함. 
	}
}

class AppleBox{
	Apple apple;

	public Apple getApple() {
		return apple;
	}

	public void setApple(Apple apple) {
		this.apple = apple;
	}
	
}
class Box{
	private Object ob;

	public Object getOb() {
		return ob;
	}
	public void setOb(Object ob) { 
		this.ob = ob;
	}
}

class Apple{
	@Override
	public String toString() {
		return "I am apple";
	}
}
class Orange{
	@Override
	public String toString() {
		return "I am orange";
	}
}

