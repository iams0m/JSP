package com.multi.www.web02;

public class Car {
	// 멤버변수
	// 멤버메서드
	// toString()
	// 객체 생성시 멤버 변수값을 한꺼번에 넣어서 초기화 하고 싶을 때
	// -> 객체 생성시 자동 호출되는 메서드 추가(생성자 메서드, constructor)
	String color; //주소(4바이트)
	int price; //4
	int speed; //4

	public Car(String color, int price, int speed) {
		this.color = color;
		this.price = price;
		this.speed = speed;
	}

//	@Override
//	public String toString() {
//		return "Car [color=" + color + ", price=" + price + ", speed=" + speed + "]";
//	}

}
