package com.multi.www.web02;

public class Car2 {
	String color; //주소(4바이트)
	int price; //4
	int speed; //4
	//하나만 제공하는 객체는
	//static : 하나만 변수 만들 때
	//pulbic : 제공하는 car2를 아무데서나 쓸 수 있도록
	public static Car2 car2; //null --> 주소
	
	//싱글톤은 해당 클래스에서 하나만 만들어서 제공!
	
	public static Car2 getInstance() {
		//이미 만들지 않았다면 
		if(car2 == null) { //아직 안만들어진 상태
			car2 = new Car2("빨강", 100, 110);
		}
		return car2;
	}
	
	public void run() {
		System.out.println("달리기");
	}
	//new를 이용해서 객체 생성시 new Car2()를 외부에서 부를 수 없도록 해당 클래스 내에서만 부르게 하고싶은 경우는
	//접근 제어자를 
	private Car2(String color, int price, int speed) {
		this.color = color;
		this.price = price;
		this.speed = speed;
	}
}
