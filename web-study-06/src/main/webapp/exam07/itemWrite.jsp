<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="com.mission.javabeans.ItemBean"/>
<jsp:setProperty name="member" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 정보 처리 페이지 </title>
<style>
* { font-family: 문체부 쓰기 정체;}
table { margin: 0 auto;  }
h2 { text-align: center; background-color: #F8E0E6;}
</style>
</head>

<body>
<h2> 입력 완료된 정보 </h2>
<table>

<tr>
<td> 상품명 </td>
<td><jsp:getProperty property="name" name="member"/></td>
</tr>
<tr>
<td> 가격 </td> 
<td><jsp:getProperty property="price" name="member"/></td>
</tr>
<tr>
<td> 상품설명 </td>
<td><jsp:getProperty property="description" name="member"/></td>
</tr>
</table>
</body>
</html>