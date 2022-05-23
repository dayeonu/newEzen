package Unit05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/CalServlet")
public class CalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
 		
 		response.setContentType("text/html; charset=utf-8");
 		String name = request.getParameter("name");
 		int num1 = Integer.parseInt(request.getParameter("n1"));
 		int num2 = Integer.parseInt(request.getParameter("n2"));
 		
 		PrintWriter out = response.getWriter();
 		out.print(name);
 		out.println();
 		out.println(num1+num2);
 		out.print("<br>");
 		out.println(num1-num2);
 		out.print("<br>");
 		out.println(num1*num2);
 		out.print("<br>");
 		out.println(num1/num2);
 		out.print("<br>");
 	}
}