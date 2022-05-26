<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id="pinksung";
String pwd="1234";
String name="성윤정";

if(id.equals(request.getParameter("id")) &&
		pwd.equals(request.getParameter("pwd")) ){
	
	Cookie c = new Cookie("username", "성윤정");
	
	c.getName();
		
	response.addCookie(c);
	
	session.setAttribute("loginUser", name);
	response.sendRedirect("10_main.jsp");
%>
	<h2> 성공적으로 로그인하였습니다.</h2>
	<p><a href="10_main.jsp"></a>
<%
}else{
%>
<h2>로그인에 실패했습니다.</h2>
<p> <a href="10_loginForm.jsp"></a>
<%	
	response.sendRedirect("10_loginForm.jsp");
}
%>
</body>
</html>