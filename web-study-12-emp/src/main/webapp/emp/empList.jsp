<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/board.css">
<title>Insert title here</title>
</head>
<body>

 <div id = "warp" align="center">
 <h1> 리스트 </h1>
 <table class="list">
 <tr>
 <td colspan="5" style="border=white; text-align:right">
 <a href="#"> 정보등록</a>
 </td>
 </tr> 
 <tr>
 <th>아이디</th> <th>이름</th> <th> 권한</th> <th>성별</th><th> 전화번호</th></tr>
 <c:forEach var="emplist" items="${emplist}">
 <tr class="recode">
 <td>${emplist.id}</td>
 <td><a href="EmpServlet?command=emp_view&id=${emplist.id}">${emplist.name}</a></td>
 <td>${emplist.lev}</td>
 <td>${emplist.gender}</td>
 <td>${emplist.phone}</td> 
</tr>
</c:forEach>
 </table>
 
 </div>
 
</body>
</html>