<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>검색 엔진 정보 페이지 </H2>
<H3>검색 엔진을 선택하세요 </H3>

	<form action="site.jsp" method="get">
		<select name="site">
			<option selected>네이버</option>
			
			<option>다음</option>
			<option>네이트</option>
			<option>구글</option>
		</select>
		<Input type="submit" value="확인">
	</form>
</body>
</html>