<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 정보 입력 폼 </title>
<style>
* { font-family: 문체부 쓰기 정체;  background-color: #FBEFF2; }
table { margin: 0 auto;  }
h2 { text-align: center; background-color: #E6E6E6;}
.tds{ text-align:center; background-color: #E6E6E6;}
</style>

</head>
<body>
<h2> 정보 입력 폼</h2>
<form method="post" action="itemWrite.jsp">
<table>
<tr>
<td class="tds"> 상품명 </td>
<td> <input type="text"	name="name"	size="20"></td>
</tr>
<tr>
<td class="tds"> 가격 </td>
<td> <input type="text"	name="price" size="20"></td>
</tr>
<tr>
<td class="tds"> 상품설명 </td>
<td> <textarea name = "content" name="description" cols="65" rows="25" style="width:100%"></textarea></td>
</tr>

</table>

<div style="text-align: center;">
<input type="submit" value="전송">
<input type="reset" value="취소">
</div>
</form>
</body>
</html>