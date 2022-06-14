<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@page import="java.sql.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
Connection conn =null;
PreparedStatement pstmt=null;
ResultSet rs= null;

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String id="scott";
String pwd="tiger";
String sql="select * from movie";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" type="text/css" href="css/shopping.css">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap" >
		<h1>리스트</h1>
		<!-- 가운데 정렬이 안되고 있음 -->
		<table class="list">
			<tr>
				<td colspan="5" style="border: white;"><a
					href="movieWrite.do">정보 등록</a></td>
			</tr>

			<th>제목</th>
			<th>감독</th>
			<th>배우</th>
			<th>가격</th>
			<th>수정</th>
			<th>삭제</th>
			<tr>

				<c:forEach var="movie" items="${movieList}">
					<tr class="record">
						<td>${movie.title}</td>
						<td>${movie.director}</td>
						<td>${movie.actor}</td>
						<td>${movie.price} 원</td>
						<td><a href="movieUpdate.do?title=${movie.title}">정보 수정</a>
						</td>
						<td><a href="movieDelete.do?title=${movie.title}">정보 삭제</a>
						</td>
						</tr>
				</c:forEach>
		</table>
	</div>
</body>
</html>