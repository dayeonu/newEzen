<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSP </title>
</head>
<body>

<form method = "post" action= "04_testLogin.jsp">
<label for="userid">아이디 :</label> <!--  클릭하면 커서 깜빡이는 소스  -->
<input type="text" name = "id" id="userid"><br>

<label for="userpwd"> 암 &nbsp; 호 :</label> <!--  클릭하면 커서 깜빡이는 소스  -->
<input type="password" name="pwd" id="userpwd"><br>

<input type="submit" value="로그인">

</form>
</body>
</html>