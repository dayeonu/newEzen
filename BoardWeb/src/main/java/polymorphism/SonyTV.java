package polymorphism;

public class SonyTV implements TV {
	 

 public void powerOn() {
	 System.out.println("sonyTV ---전원 켠다");
 }
 public void powerOff() {
	 System.out.println("sonyTV ---전원 끈다");
 }
 public void volumeUp() {
	 System.out.println("sonyTV  ---소리 올린다");
 }
 public void volumeDown() {
		 System.out.println("sonyTV  ---소리 줄인다");
	 }
}
