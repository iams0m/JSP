package com.multi.www.web02;

public class MainCar3 {

	public static void main(String[] args) {
		Car2 car2; //12
		for (int i = 0; i < 1000; i++) {
			car2 = Car2.getInstance();
			System.out.println(car2); //주소 확인
		}
		System.out.println("메모리 크기 >> " + 12 * 1);

	}

}
