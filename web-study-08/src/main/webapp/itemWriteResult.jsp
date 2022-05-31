<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! 
	Connection conn = null;
	Statement stmt=null;
	ResultSet rs= null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";

	String sql="Select * from item";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width='800' border='1'>
	<tr>
		<th>제품</th>
		<th>가격</th>
		<th>설명</th>
	</tr>

<%
try{
	//1. 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//2. 연결
	conn = DriverManager.getConnection(url,uid,pass);
	//3. sql문장 작성 
	stmt = conn.createStatement();
	//4. sql문장 실행
	rs = stmt.executeQuery(sql);
	//5. 실행된 결과물을 rs를 통해서 출력.  데이터베이스에 저장된 모든 회원정보를 얻어오기위해서 반복문을 돌면서 컬럼단위로 데이터값을 얻어옵니다.
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>" + rs.getString("name")+"</td>");
		out.println("<td>" + rs.getString("price")+"</td>");
		out.println("<td>" + rs.getString("description")+"</td>");
		out.println("</tr>");
	} //while문의 끝 
	
} catch(Exception e){
	e.printStackTrace();
}finally{
	try{
	if(rs != null) rs.close();
	if(stmt != null) stmt.close();
	if(conn != null) conn.close();
	} catch(Exception e){
		e.printStackTrace();
	}
}	
%>
	</table>
</body>
</html>