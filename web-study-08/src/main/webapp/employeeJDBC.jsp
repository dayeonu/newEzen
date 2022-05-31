<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! 
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";
	String sql = "select * from employee";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<table border='1' class="table">
 <thead>
      <tr>
        <th>name</th>
        <th>address</th>
        <th>ssn</th>
      </tr>
    </thead>

<%
try{
	//1. jdbc 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//2. 데이터베이스 연결 객체인 Connetion 생성
	conn = DriverManager.getConnection(url, uid, pass);
	//3. PreparedStatement 객체 생성하기 
	pstmt = conn.prepareStatement(sql);
	//4. 바인딩 변수를 채운다. 
	rs = pstmt.executeQuery(sql);
	//5. sql문을 실행하여 결과 처리
	while(rs.next()){
%>
<tbody>
    <tr class="table-primary">
    <td> <%=rs.getString(1) %></td>
    <td> <%=rs.getString(2) %></td>
    <td> <%=rs.getString(3) %></td>
    </tr>
    </tbody>      
    <%
		
	}
	
} catch(Exception e){
	e.printStackTrace();
} finally {
	//6. 사용한 리소스 해제
	try{
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	} catch(Exception e){
		e.printStackTrace();
	}
} //finally의 끝 
%>
</table>

</body>
</html>