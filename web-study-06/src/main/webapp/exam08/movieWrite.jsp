<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="com.mission.javabeans.MovieBean"/>
<jsp:setProperty name="member" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 정보 처리 페이지 </title>
<style>
* { font-family: 문체부 쓰기 정체; background-color: #FBEFF2; }
table { margin: 0 auto;  }
table tr td :first-child{ text-align: center; }
h2 { text-align: center; background-color: #F8E0E6;}
</style>
</head>

<body>
<h2> 입력 완료된 정보 </h2>
<table>

<tr>
<td> 제목 </td>
<td><jsp:getProperty property="title" name="member"/></td>
</tr>
<tr>
<td> 가격 </td> 
<td><jsp:getProperty property="price" name="member"/></td>
</tr>
<tr>
<td> 감독 </td>
<td><jsp:getProperty property="director" name="member"/></td>
</tr>
<tr>
<td> 출연배우 </td>
<td><jsp:getProperty property="actor" name="member"/></td>
</tr>
<tr>
<td> 시놉시스 </td>
<td>
<textarea cols="65" rows="25" style="width:100%">
<jsp:getProperty property="synopsis" name="member"/></textarea></td>

<tr>
<td> 장르 </td>
<td><jsp:getProperty property="genre" name="member"/></td>
</tr>
</table>
</body>
</html>