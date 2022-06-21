package polymorphism;

public class LgTV implements TV {

	private Speaker speaker;
	private int price;
	public LgTV() {System.out.println("lgTV 생성자"); }
	
	public LgTV(Speaker speaker, int price) {
		System.out.println("lgTV 생성자");
		this.speaker = speaker;
		this.price = price;
	}
 public void powerOn() {
	 System.out.println("LgTV ---전원 켠다");
 }
 public void powerOff() {
	 System.out.println("LgTV ---전원 끈다");
 }
 public void volumeUp() {
	 System.out.println("LgTV ---소리 올린다");
	 speaker.volumeUp();
 }
 public void volumeDown() {
		 System.out.println("LgTV ---소리 줄인다");
		 speaker.volumeDown();
 }
}
