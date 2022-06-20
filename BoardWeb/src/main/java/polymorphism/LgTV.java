package polymorphism;

public class LgTV implements TV {
	public LgTV() {
	}

 public void powerOn() {
	 System.out.println("LgTV ---전원 켠다");
 }
 public void powerOff() {
	 System.out.println("LgTV ---전원 끈다");
 }
 public void volumeUp() {
	 System.out.println("LgTV ---소리 올린다");
 }
 public void volumDown() {
		 System.out.println("LgTV ---소리 줄인다");
	 }
@Override
public void volumeDown() {
	// TODO Auto-generated method stub
	
}
}
