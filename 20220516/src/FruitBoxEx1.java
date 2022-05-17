import java.util.ArrayList;


class Fruit					{ public String toString() { return "Fruit";}}
class Apple1 extends Fruit	{ public String toString() { return "Apple";}}
class Grape extends Fruit	{ public String toString() { return "Grape";}}
class Toy					{ public String toString() { return "Toy";}}

public class FruitBoxEx1 {
	public static void main(String[] args) {

		Box1<Fruit> fruitBox = new Box1<Fruit>();
		Box1<Apple1> appleBox = new Box1<Apple1>();
		Box1<Toy> toyBox = new Box1<Toy>();
	
		fruitBox.add(new Fruit());
		fruitBox.add(new Apple1());
		
		appleBox.add(new Apple1());
		appleBox.add(new Apple1());
		
		toyBox.add(new Toy());
		
		System.out.println(fruitBox);
		System.out.println(appleBox);
		System.out.println(toyBox);
		
	} //main 끝
}

class Box1<T>{
	ArrayList<T> list  = new ArrayList<T>();
	void add(T item)	 {list.add(item);}
	T get(int i)		 {return list.get(i);}
	int size()			{return list.size();}
	public String toString() {return list.toString();}
}
