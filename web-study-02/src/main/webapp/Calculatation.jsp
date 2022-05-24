<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="CalServlet" method="get">
	이름  : <input type="text" name="name"><br> 
	숫자1  : <input type="text" name="n1"><br> 
	숫자2 : <input type="text" name="n2"><br> 
	<input type = "submit" value="전송">
	<input type = "reset" value="취소">
</form>
</body>
</html>