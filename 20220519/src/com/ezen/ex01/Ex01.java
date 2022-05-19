package com.ezen.ex01;

public class Ex01 {
	
	void shuffle() {
		for(int x=0; x< CARD_NUM *2; x++) {
			int i = (int)(Math.random() * CARD_NUM);
			int j = (int)(Math.random() * CARD_NUM);
		
			SutdaCard tmp = cards[i];
			cards[i] = cards[j];
			cards[j] = tmp;
			
		}
	}
}// SutdaDeck

class player{
	String name;
	SutdaCard c1;
	SutdaCard c2;
	
	int point;
	
	player(String name, SutdaCard c1, SutdaCard c2){
		this.name = name;
		this.c1 = c1;
		this.c2 = c2;
	}
	
	public String toString() {
		return "["+name+"]" + c1.toString() +"," + c2.toString();
	}
} //class player

class SutdaCard{
	int num;
	boolean isKwang;
	
	SutdaCard(){
		this(1,true);
	}
	SutdaCard(int num, boolean isKwang){
		this.num = num;
		this.isKwang = isKwang;
	}
	
	public String toString() {
		return num + (isKwang ? "K":"");
	}

}