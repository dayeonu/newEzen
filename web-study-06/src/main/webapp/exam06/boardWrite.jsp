<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="com.mission.javabeans.BoardBean"/>
<jsp:setProperty name="member" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 입력 완료된 정보</h2>

<table border ="1">
<tr>
<td> 작성자 </td>
<td><jsp:getProperty property="name" name="member"/></td>
</tr>
<tr>
<td> 비밀번호 </td> 
<td><jsp:getProperty property="pass" name="member"/></td>
</tr>
<tr>
<td> 이메일 </td>
<td><jsp:getProperty property="email" name="member"/></td>
</tr>
<tr>
<td> 글제목 </td>
<td><jsp:getProperty property="title" name="member"/></td>
</tr>
<tr>
<td> 글내용 </td>
<td><jsp:getProperty property="content" name="member"/></td>
</tr>

</table>

</body>
</html>