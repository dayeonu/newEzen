<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%! 
	Connection conn =null;
	PreparedStatement pstmt=null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid="scott";
	String pass="tiger";
	
	String sql="insert into item values(?,?,?)";
			
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력 완료된 정보 </h2>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String description = request.getParameter("description");

try{
		//1. jdbc 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2. 데이터베이스 연결 객체인 Connetion 생성
		conn = DriverManager.getConnection(url, uid, pass);
		//3. PreparedStatement 객체 생성하기 
		pstmt = conn.prepareStatement(sql);
		//4. 바인딩 변수를 채운다. 
		pstmt.setString(1,name);
		pstmt.setString(2,price);
		pstmt.setString(3,description);
		//5. sql문을 실행하여 결과 처리
		pstmt.executeUpdate();
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		//6. 사용한 리소스 해제
		try{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	} //finally의 끝 
	%> 
<a href = "itemWriteResult.jsp"> 결과 보기 </a>	

</body>
</html>