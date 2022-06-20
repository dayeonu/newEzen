package polymorphism;

public class jinaTV implements TV{
	@Override
	public void powerOn() {
		System.out.println("진아야 티비켜라");
	}
	@Override
	public void powerOff() {
		System.out.println("진아야 티비꺼라");
		
	}
	@Override
	public void volumeUp() {
		System.out.println("진아야 티비 소리너무작다");
		
	}
	@Override
	public void volumeDown() {
		System.out.println("진아야 티비 소리너무크다");
		
	}
}
