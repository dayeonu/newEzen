<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.*" %>    
<%@ page import="com.self.BoardDAO.*" %>    
<%@ page import="java.text.*" %>    

<jsp:useBean id = "dao" class="com.self.BoardDAO.BoardDAO" />

<%
//1. 사용자 입력 받기(page)
	String strpage = request.getParameter("page");
	if(strpage == null){
		strpage = "1";
	}
	int curpage = Integer.parseInt(strpage);
	
//2. 데이터베이스에서 데이터 받아오기
	List<BoardVO> list = dao.boardListData(curpage);
	int totalPage = dao.boardTotalPage();
//3. 페이지 표시(페이징)
	int Block = 5;
		//시작번호 = (현재페이지 - 1) * 페이지당 게시물수 + 1
	int startPage = ((curpage-1)/Block*Block) + 1;
	int endPage = ((curpage-1)/Block*Block) + Block;

	if(endPage > totalPage)
		endPage = totalPage;
	
//4. 현재 날짜 표시 
	String today = new SimpleDateFormat("yyyy-mm-dd").format(new Date());
	
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Insert title here</title>

<style type="text/css">
.container {
	margin-top: 30px;
}

.row {
	margin: 0px auto;
	width: 960px;
}

h1 {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h1>자유 게시판</h1>
		<div class="row">
			<table class="table">
				<tr>
					<td><a href="insert.jsp" class="btn btn-primary active">새글</a>
					</td>
				</tr>
			</table>
			<table class="table">
				<tr class="danger">
					<th class="text-center" width=10%>번호</th>
					<th class="text-center" width=45%>제목</th>
					<th class="text-center" width=15%>이름</th>
					<th class="text-center" width=20%>작성일</th>
					<th class="text-center" width=10%>조회수</th>
				</tr>
				<%
					for(BoardVO vo : list){
				%>
				<tr>
					<td class="text-center" width=10%><%=vo.getNo() %></td>
					<td width=45%><a href="detail.jsp"><%=vo.getSubject() %></a>&nbsp;
						<sup style="color: red">new</sup></td>

					<td class="text-center" width=15%><%=vo.getName() %></td>
					<td class="text-center" width=20%><%=vo.getDbday() %></td>
					<td class="text-center" width=10%><%=vo.getHit() %></td>
				</tr>
				<%		
					}
				%>
			</table>
		</div>

		<!-- 	페이지 나누기  페이징 부분 -->
		<div class="row">
			<div class="text-center">
				<ul class="pagination">
					<%
				  	if(startPage > 1) { //1, 4, 7
				  %>
					<li><a href="list.jsp?page=<%=startPage-1%>">&lt;</a></li>
					<!-- &lt는 '<' 부등호표시  -->
					<%
				  	}
				  %>

					<%
				  	for(int i=startPage; i<=endPage; i++){
				  		String act = "";
				  		if(curpage == i)
				  			act = "class=active";
				  		else
				  			act = "";
				  %>
					<li <%=act %>><a href="list.jsp?page=<%=i%>"><%=i%></a></li>
					<%
				  	}
				  %>
					<%
				  	if(endPage < totalPage){
				  %>
					<li><a href="list.jsp?page=<%=endPage+1%>">&gt;</a></li>
					<%
				  	}
				  %>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>