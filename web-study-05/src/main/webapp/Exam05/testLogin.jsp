<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id="pinksung";
String pwd="1234";
String name="성윤정2";

if (id.equals(request.getParameter("id")) &&
		pwd.equals(request.getParameter("pwd")) ){
	//1.쿠키 객체생성
	Cookie c = new Cookie("userName", "name");
	//2. 속성 부여
	c.setMaxAge(24*60*60);
	//3. 클라이언트 전송
	response.addCookie(c);
%>
	<h2> 성공적으로 로그인하였습니다.</h2>
	<p><a href="main.jsp"> 들어가기</a>
<%
	}else{
%>
	<h2>로그인에 실패했습니다.</h2>
	<p> <a href="loginForm.jsp"> 되돌아가기</a> 
<%	
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>