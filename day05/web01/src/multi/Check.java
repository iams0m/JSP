package multi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/check.do")
public class Check extends HttpServlet {
	@Override
	public void init() throws ServletException {
		System.out.println("Check 서블릿 객체가 하나 만들어짐.");
	}
	
	@Override
	public void destroy() {
		System.out.println("Check 서블릿 소멸됨.");
	}
	
	// get요청 : 클라이언트로부터 전달되는 데이터는 주소와 함께 도착
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String today = request.getParameter("today");
		String result = "그냥 있자";
		if (today.equals("맑음")) {
			result = "나가자";
		} else if (today.equals("흐림")) {
			result = "코딩";
		} else if (today.equals("비옴")) {
			result = "쇼핑";
		}
		// setContentType은 out만들기 전에 설정
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 받을 때
		//방법1
		response.setContentType("text/html;charset=UTF-8"); // 보낼 때
		PrintWriter out = response.getWriter();
		String pw = request.getParameter("pw");
		if (pw.equals("나는왕이다")) {
			out.print("<img src='수달.png' width=300 height=300>들어오세요!");
		} else {
			out.print("<img src='파인애플.png' width=300 height=300>들어올 수 없습니다!");
		}
		//방법2
//		String pw = request.getParameter("pw");
//		String result = "들어올 수 없습니다.<img src='파인애플.png'>";
//		if (pw.equals("나는왕이다")) {
//			result = "들어오세요.<img src='수달.png'>";
//		} 
//		// setContentType은 out만들기 전에 설정!!
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
//		out.print(result);
		
		out.close();
	}

}
