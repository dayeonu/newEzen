<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 정보 등록 </title>
<style>
* { font-family: 문체부 쓰기 정체;  background-color: #FBEFF2; }
table { margin: 0 auto;  }
h2 { text-align: center; background-color: #E6E6E6;}
.tds{ text-align:center; background-color: #E6E6E6;}
table tr td :first-child{ text-align: center; }
</style>
</head>
<body>
<h2> 정보 등록</h2>
<form method="post" action="movieWrite.jsp">
<table>
<tr>
<td class="tds"> 영화제목 </td>
<td> <input type="text"	name="title" size="20"></td>
</tr>
<tr>
<td class="tds"> 가격 </td>
<td> <input type="text"	name="price" size="20"> 원 </td>
</tr>
<tr>
<td class="tds"> 감독 </td>
<td> <input type="text"	name="director" size="20"></td>
</tr>
<tr>
<td class="tds"> 출연배우 </td>
<td> <input type="text"	name="actor" size="20"></td>
</tr>
<tr>
<td class="tds"> 시놉시스 </td>
<td><textarea name="synopsis" cols="65" rows="25" style="width:100%"></textarea></td>
</tr>
<tr>
<td class="tds"> 장르 </td>
<td>  
	<label for="list">
 		<select id="list" name="genre" size="1">
            <option value="로맨스">로맨스</option>
            <option value="스릴러">스릴러</option>
            <option value="미스터리">미스터리</option>
            <option value="액션">액션</option>
            <option value="코미디">코미디</option>
            <option value="애니메이션">애니메이션</option>
         </select>  </label> 
</td>
</tr>
</table>


<div style="text-align: center;">
<input type="submit" value="확인"  style="background-color: #e2e2e2;">
<input type="reset" value="취소" style="background-color: #e2e2e2;">
</div>
</form>
</body>
</html>