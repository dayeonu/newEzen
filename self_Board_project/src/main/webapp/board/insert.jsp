<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
.container {
	margin-top: 50px;
}

.row {
	margin: 0px auto;
	width: 700px;
}

h1 {
	text-align: center;
}

.a {
	/* background-image: url( "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile10.uf.tistory.com%2Fimage%2F99356C355EAF84191D5AB0" ); */
background: linear-gradient(110deg, #000000 60%, #0000dd 60%); 
color:blue;
font: normal; font-family:monospace; font-stretch: extra-condensed; 
}
</style>

</head>
<body>
<div class = "a">
<div class="container">
		<h1>글쓰기</h1>
		<div class="row">
			<form method="get" action="insert_impl.jsp">
				<table class="table">
					<tr>
						<th class = "text-right" width=15%>이름</th>
						<td width = 85%>
							<input type="text" name="name" size="15" class="input-sm">
						</td>
					</tr>
					<tr>
						<th class = "text-right" width=15%>제목</th>
						<td width = 85%>
							<input type="text" name="subject" size="55" class="input-sm">
						</td>
					</tr>
					
					<tr>
						<th class = "text-right" width=15%>내용</th>
						<td width = 50%>
							<textarea rows="15" cols="75" name="content"></textarea>
						</td>
					</tr>

					<tr>
						<th class = "text-right" width=15%>비밀번호</th>
						<td width = 85%>
						<input type="password" name="pwd" size="10" class="input-sm">
					</td>
					</tr>
					 
					<td colspan="2" class="text-center">
					<input type="submit" value="글쓰기" class="btn btn-primary active">
					<input type="submit" value="취소" class="btn btn-primary active" onclick="javascript:history.back()">
					</td>
				</table>
			</form>
		</div>
	</div>
	</div>
</body>
</html>