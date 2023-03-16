package multi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

public class MovieDAO {
	public int insert(MovieVO bag) {
		int result = 0;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "insert into movie values (?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요.
			// 가방에서 하나씩 꺼내서 쓰세요.
			ps.setString(1, bag.getId()); // ps.setInt(1,no);
			ps.setString(2, bag.getTitle());
			ps.setString(3, bag.getContent());
			ps.setString(4, bag.getLocation());
			ps.setString(5, bag.getDirector());

			System.out.println("3.SQL문 부품(객체)으로 만들어주기.");

			result = ps.executeUpdate(); // 잘 인식하면 1
			System.out.println("4.SQL문 오라클로 보내기 성공.");
			if (result == 1) {
				System.out.println("데이터 입력 성공!");
			}
			// System.out.println(result);
		} catch (Exception e) {
			// insert가 제대로 안 된 경우, 위험한 상황이라고 판단하여 catch 실행
			// result = 0;
			// System.out.println(result);
			e.printStackTrace(); // 에러를 추적해서 프린트
		}
		System.out.println(result);
		return result;
	}

}
