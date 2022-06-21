package polymorphism;

public  class SamsungTV implements TV{
	private SonySpeaker speaker;
	private double price;
	
	
	public void setSpeaker(SonySpeaker speaker) {
		System.out.println("setSpeaker 호출");
		this.speaker = speaker;
	}

	public void setPrice(double price) {
		System.out.println("setPrice 호출");
		this.price = price;
	}

	//집약관계 
	public SamsungTV(){
		System.out.println("삼성티비 생성자 1개 생성됨");
	}
 
	public SamsungTV(SonySpeaker speaker){
		System.out.println("삼성티비 생성자 2개 생성됨");
		this.speaker = speaker;
	}
	
	public SamsungTV(SonySpeaker speaker, double price){
		System.out.println("삼성티비 생성자 3개 생성됨");
		this.speaker = speaker;
		this.price = price;
	}
	public void powerOn() {
		System.out.println("SamsungTV---전원 켠다");
		System.out.printf("가격: %.2f원\n",price);
	}
	public void powerOff() {
		System.out.println("SamsungTV---전원 끈다");
	}
	public void volumeUp() {
		System.out.println("SamsungTV---소리 올린다");
		speaker.volumeUp();
	}
	public void volumeDown() {
		System.out.println("SamsungTV---소리 내린다");
		speaker.volumeDown();
	}
}
