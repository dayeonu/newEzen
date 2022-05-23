package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdditionServlet01")
public class AdditionServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 서블릿 스타일은 함께 작성됨 
	//HttpServletRequest request -- 요청 받는 놈 
	//HttpServletResponse response -- 요청 하는 놈 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//여기 있던 문장은 삭제한다. 
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
 
		PrintWriter out =  response.getWriter();
		out.println("<html><head><title>Additon</title></head>");
		out.println("<body>");
		out.println(num1 + "+" +num2+ "=" + add);
		out.println("</body>");
		out.println("</html>");
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
