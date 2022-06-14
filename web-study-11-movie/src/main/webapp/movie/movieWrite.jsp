<%@page import="util.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 정보 등록</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
	<div id="wrap" align="center">
		<form method="post" enctype="multipart/form-data" name="frm">
			<table>
				<tr>
					<th>제 목</th>
					<td><input type="text" name="title" size="60"></td>
				</tr>
				<tr>
					<th>가 격</th>
					<td><input type="text" name="price" size="30"></td>
				</tr>
				<tr>
					<th>감 독</th>
					<td><input type="text" name="director" size="30"></td>
				</tr>
				<tr>
					<th>배 우</th>
					<td><input type="text" name="actor" size="30"></td>
				</tr>
				<tr>
					<th>설 명</th>
					<td><textarea cols="80" rows="10" name="description"></textarea></td>
				</tr>
				<tr>
					<th>사 진</th>
					<td><input type="file" name="pictureurl"></td>
				</tr>
			</table>
		<br>
		<input type="submit" value="확인" onclick="return movieCheck()">
		<input type="reset" value="취소" >
		<input type="button" value="목록" onclick="location.href='movieList.do'">
		</form>
	</div>
</body>
</html>