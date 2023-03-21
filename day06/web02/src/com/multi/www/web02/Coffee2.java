package com.multi.www.web02;

public class Coffee2 {
	int price = 5000;
	String name = "콜드브루";
	public static Coffee2 coffee2; //null

	public static Coffee2 getInstance() {
		if (coffee2 == null) {
			coffee2 = new Coffee2();
		}
		return coffee2;
	}

	private Coffee2() {//객체를 외부에서 마음대로 만들지 못하게 하기 위해 private 사용(싱글톤을 위한 빌드업)
	}

}
