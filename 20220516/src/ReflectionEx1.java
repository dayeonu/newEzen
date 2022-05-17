import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ReflectionEx1 {

	public static void main(String[] args) throws Exception{

		Class clsName = Class.forName("Test"); 
		Object obj = clsName.getDeclaredConstructor().newInstance();
		System.out.println(obj.getClass().getName());
		
		Method[] method = clsName.getDeclaredMethods();
		System.out.println(method);
		
		//객체 생성하지 않고 호출하기. 
		//java.lang.reflect.Method 기능 사용한 것 
		//A Method provides information about, and access to, a single methodon a class or interface. The reflected method may be a class methodor an instance method (including an abstract method). 
		//A Method permits widening conversions to occur when matching theactual parameters to invoke with the underlying method's formalparameters, but it throws an IllegalArgumentException if anarrowing conversion would occur.

		for(Method m : method)
			System.out.println(m);
		
		Field[] fiels = clsName.getDeclaredFields();
		for(Field f : fiels)
			System.out.println(f.getInt(obj));
	
	}
}

class Test{
	int num=10;
	int num2=20;
	int num3=30;
	
	void func1(){}
	void func2(){}
	void func3(){}
	
}