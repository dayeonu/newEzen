package com.ezen.ex02;

interface Printable{
	void print();
}
class Papers{

	private String con;
	public Papers(String s) {con = s;}


	public Printable getPrinter() {
		return new Printable() {
			public void print() {
			}

		};
	}
}
public  class LocalClass1 {
	public static void main(String[] args) {
		Papers p = new Papers("Message Java!");
		Printable prn = p.getPrinter();
		prn.print();
	}
}