package polymorphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {
	public static void main(String[] args) {
		
	AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
	TV tv =(TV)factory.getBean("samsung"); // 불러올 데이타의 형태를모르니까 타입변환 (TV)로 함

	tv.powerOn(); 
	tv.powerOff();
	tv.volumeUp();
	tv.volumeDown();
	
	factory.close();
	
	}
	
}
