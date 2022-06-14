<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%!

	Connection conn=null;
	Statement stmt=null;
	ResultSet rs = null;
	
	String url="jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass="tiger";
	String sql= "select * from member";

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