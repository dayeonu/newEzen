package buildTest;

public class Calc {

	int num1, num2;
	
	public Calc() {
		this(1,1);
	}
		public Calc(int x, int y) {
		num1 = x;
		num2 = y;
	}
		int add() {return num1 + num2;}
		int sub() {return num1 - num2;}
		int mul() {return num1 * num2;}
		double div() {
			return num1 / (double)num2;
	}
	public void getInfo() {
		System.out.println("두 정수:"+ num1 + "," +num2);
		System.out.printf("%d + %d = %d\n", num1, num2, num1+num2);
		System.out.printf("%d - %d = %d\n", num1, num2, num1+num2);
		System.out.printf("%d * %d = %d\n", num1, num2, num1+num2);
		System.out.printf("%d / %d = %d\n", num1, num2, num1+num2);
	}
}
