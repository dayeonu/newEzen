<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//1. 클라이언트로부터 cookie[]를 얻어옴. 
	Cookie[] cookies = request.getCookies();
	String name=null;
	%>  

	<%
	//2.쿠키의 name을 얻어서 "userName" 인지 비교하여 같으면 
	if( cookies != null ){
		//같으면 value를 얻어와 출력 
		for( Cookie cookie : cookies ){
			name = cookie.getName();
			if(name.equals("userName")){
				out.print(cookie.getValue());
			}
		} 
%>
	<%=name %>님, 안녕하세요!<br>
	
	<p><a href = "loginForm.jsp">되돌아가기</a></p>
<%	
	} else {
	%>
		<h2>로그인에 실패하였습니다. </h2>
		<p><a herf="main.jsp">되돌아가기</a>
<% } %>

</body>
</html>