<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/board.css">
<title>Insert title here</title>
</head>
<body>

	<div id="warp" align="center">
		<h1>리스트</h1>
		<table class="list">
			<tr>
<<<<<<< HEAD
				<td colspan="5" style="text-align: right"><a href="EmpServlet?command=emp_join_form"> 정보등록</a>
=======
				<td colspan="5" style="text-align: right"><a href="#"> 정보등록</a>
>>>>>>> 78c19239a398eace0e126ddf60eaa68d21340d06
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>권한</th>
				<th>성별</th>
				<th>전화번호</th>
			</tr>
			<c:forEach var="emplist" items="${emplist}">
				<tr class="recode">
					<td>${emplist.id}</td>
					<td><a href="EmpServlet?command=emp_view&id=${emplist.id}">${emplist.name}</a></td>
<<<<<<< HEAD
					<c:choose>
					<c:when test="${emplist.lev == 'A' }"> 
					<td>운영자</td>
					</c:when>
					<c:otherwise>
					<td>일반회원</td>  
					</c:otherwise>
					
					</c:choose>
					<c:choose>
					<c:when test="${emplist.gender=='1' }">
					<td>남자</td>
					</c:when>
					<c:otherwise>
					<td>여자</td>
					</c:otherwise>
					</c:choose>
					<td>${emplist.phone}</td>
					
				</tr>
			</c:forEach>
		</table>
	</div>
=======
					<td>${emplist.lev}</td>
					<td>${emplist.gender}</td>
					<td>${emplist.phone}</td>
				</tr>
			</c:forEach>
		</table>

	</div>

>>>>>>> 78c19239a398eace0e126ddf60eaa68d21340d06
</body>
</html>