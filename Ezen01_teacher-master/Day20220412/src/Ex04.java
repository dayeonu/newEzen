import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Scanner;

public class Ex04 {
	public static void main(String[] args) throws IOException, InterruptedException {

		int count=0;
		{
			File SrcFile = new File("res/data.txt");
			FileInputStream srcFis = new FileInputStream(SrcFile);
			Scanner fscan = new Scanner(srcFis);
		
			while(fscan.hasNext()) {
				fscan.next();
				count++;
			}
			fscan.close();
			srcFis.close();
		}

		
		int[] nums = new int[count];
		{
			File srcFile = new File("res/data.txt");
			FileInputStream srcFis = new FileInputStream(srcFile);
			Scanner fscan = new Scanner(srcFile);
		
			for(int i=0; i<count; i++){
				String temp = fscan.next();
				nums[i] = Integer.parseInt(temp);
			}
			fscan.close();
			srcFis.close();
		}

		for(int i=0; i<count; i++)
			System.out.printf("%d ",nums[i]);
	
		System.out.println("\n -----------------------------");
	
		//�迭���� Ư�� �����͸� ã�� �ɷ�
		int index = -1;
		{
			//�ݺ������� ���鼭 ã�ƺ���........
			for(int i=0; i<count-1; i++)
				if(88 == nums[i]) {
					index = i;
					break;
				}
		}
		System.out.printf("index : %d\n",index);

		//�迭���� ��ġ�� �ٲٰų� ���� �����ϴ� �ɷ�
		//���� ����   --> ù��° ������ �ټ���° ������ ��ȯ�Ͻÿ�.
		for(int i=0; i<count; i++)
			System.out.print(nums[i] + " ,");
		System.out.println();
		//���� ����
		{
			
			int tmp = nums[0];
			nums[0] = nums[4];
			nums[4] = tmp;
		}
		for(int i=0; i<count; i++)
			System.out.print(nums[i] + " ,");
		System.out.println("\n---------------------------------");
	
		//���� ������ 0�� 4 ��ġ�� ���� �ٲ�� ���̾���.
		//�̹����� �ݺ������� i <==> i+1 ��ġ���� �ٲٴ� ������ �����غ���. �ݺ�Ƚ���� count-1�� �Ѵ�.
		//����� ��� ����� 0��° ���� ���� �ڷ� �з��� ���¿��� �Ѵ�.
		for(int i=0; i<count-1; i++) {
			int tmp = nums[i];
			nums[i] = nums[i+1];
			nums[i+1] = tmp;
			
		}
		for(int i=0; i<count; i++)
			System.out.print(nums[i] + " ,");
		System.out.println("\n------------------------------");
	
		// �� ���α׷��� 1�� Upgrade.....	
		for(int i=0; i<count-1; i++) {
			if(nums[i]>nums[i+1]) { //1ȸ������ ����
				int tmp = nums[i];
				nums[i] = nums[i+1];
				nums[i+1] = tmp;
			}
			
			Thread.sleep(1000);
			//ȭ�� �о� ����..-> ó���� ������������ ����
			for(int j = 0; j<30; j++)
				System.out.println();
			
			for(int j=0; j<count; j++)
				if(j == i+1 || j==i)
					System.out.printf("[%d] ", nums[j]);
				else
					System.out.printf("%d ", nums[j]);
			//System.out.println("\n---------------------------------");
		}
		
		//����(���, �߾Ӱ�[���ĵ� �������� ��� ��], �ִ밪, �ּҰ�...)
		
	}
}