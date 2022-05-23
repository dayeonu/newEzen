package Unit05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");	
		String age = request.getParameter("age"); //null 값으로 들어온다. 
//		int age = Integer.parseInt(request.getParameter("age")); null값을 정수형태로 변환이 안되므로 에러
		PrintWriter out = response.getWriter();

		//		String a = request.getParameter(id+age);	
		out.println("id=" + id );
		out.println("age =" + age);
//		out.println(a);
//		out.println("id + age =" + id * age)
//		out.println("id + age =" + id + age)
//		out.println("id + age =" + id + age)
	}


	private String getParameter(String string) {
		return null;
	}
}
