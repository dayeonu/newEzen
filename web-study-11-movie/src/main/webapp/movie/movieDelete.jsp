<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<title>Insert title here</title>
</head>
<body>
<div id="wrap" align="center">
		<form method="post" action="movieDelete.do">
			<h1>영화 삭제</h1>
	<table>
		<tr>
			<td><c:choose>
					<c:when test="${empty movie.poster }">
						<img src="upload/noimage.gif">
					</c:when>
					<c:otherwise>
						<img src="images/${movie.poster }">
					</c:otherwise>
				</c:choose>
			</td>
		<td>
	<table>
		<tr>
			<th style="width: 80px">제목</th>
			<td><input type="text" name="title" value="${movie.title }"
				size="80"></td>
		</tr>
		<tr>
			<th style="width: 80px">가격</th>
			<td><input type="text" name="price" value="${movie.price }"
				size="30"> 원</td>
		</tr>
		<tr>
			<th style="width: 80px">감독</th>
			<td><input type="text" name="director"
				value="${movie.director }" size="80"></td>
		</tr>
		<tr>
			<th style="width: 80px">배우</th>
			<td><input type="text" name="actor" value="${movie.actor }"
				size="80"></td>
		</tr>
		<tr>
			<th style="width: 80px">시놉시스</th>
			<td><textarea rows="20" cols="60" name="synopsis">${movie.synopsis }</textarea>
		</tr>
		<tr>
			<th style="width: 80px">사진</th>
			<td><input type="file" name="poster"></td>
		</tr>
	</table>	
</td>
</tr>
</table>	
	<br>
	<input type="hidden" name="code" value="${movie.code}">
	<input type="submit" value="삭제">
	<input type="button" value="목록" onclick="location.href='movieList.do'">
	</form>
	</div>
	</body>
</html>