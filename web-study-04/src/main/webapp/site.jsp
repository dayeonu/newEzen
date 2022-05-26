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
	request.setCharacterEncoding("utf-8");
	String str = request.getParameter("site");
	if(str.equals("네이버")) {
		response.sendRedirect("http://www.naver.com");
	} else if (str.equals("다음")) {
		response.sendRedirect("http://www.daum.net");
	} else if (str.equals("네이트")) {
			response.sendRedirect("http://www.nate.com");
	} else {response.sendRedirect("http://www.google.co.kr"); }
	
%>
</body>
</html>