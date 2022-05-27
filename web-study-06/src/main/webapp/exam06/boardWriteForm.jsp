<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>

<style>
.tds{ text-align:center; background-color:  #E6E6E6;}
h2 { text-align: center; background-color: #F8E0E6;}
table { margin: 0 auto;  }
*{ font-family: 문체부 쓰기 정체;}
</style>

</head>
<body>
<form method="post" action="boardWrite.jsp">
<h2> 게시판 글쓰기 </h2>

<table border="1">
<tr>
<td class="tds">작성자</td>
<td><input type="text" name="name" size="15"></td>
</tr>

<tr>
<td class="tds">비밀번호</td> 
<td ><input type="text" name="pass" size="15">(게시물 수정 삭제 시 필요합니다.)</td>
</tr>

<tr>
<td class="tds">이메일</td>
<td><input type="text" name="email" size="35"></td>
</tr>

<tr>
<td class="tds">글제목</td>
<td><input type="text" name="title" size="45"></td>
</tr>

<tr>
<td class="tds">글내용</td>
<td><textarea name="content" name="content"  rows="10" style="width:100%"></textarea></td>
</tr>

</table>
<div style="text-align: center;"><input type="submit"  value="등록"><input type="reset" value="다시작성"></div>

</form>
</body>
</html>