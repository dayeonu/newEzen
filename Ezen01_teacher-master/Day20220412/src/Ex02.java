import java.util.Arrays;
import java.util.Scanner;

//�� ���� �Է¹޾Ƽ� ����� ���ϴ� ���α׷�
public class Ex02 {

	public static void main(String[] args) {

		int score = 0;
		char grade = ' ';
		char opt = '0';

		System.out.print("������ �Է����ּ���.>");

		Scanner scanner = new Scanner(System.in);
		String tmp = scanner.nextLine(); // ȭ���� ���� �Է¹��� ������ tmp�� ����
		score = Integer.parseInt(tmp); // �Է¹��� ���ڿ�(tmp)�� ���ڷ� ��ȯ

		System.out.printf("����� ������ %d�Դϴ�.", score);

		if (score >= 98) {
			grade = 'A';
			opt = '+';
		}
		else if (score >= 94) {
			grade = 'A';
		}
		else if (score < 94) { // 90�� �̻� 94�� �̸��� A-
			grade = 'A';
			opt = '-';
		} else if (score >= 80) { // score�� 80�� ���� ���ų� ũ�� B����(grade)
			grade = 'B';
			if (score >= 88) {
				opt = '+';
			} else if (score < 84) {
				opt = '-';
			}
		} else { // ������95�� C����(grade)
			grade = 'C';
		}

		System.out.printf("����� ������ %c%c�Դϴ�.%n", grade, opt);
	}

}