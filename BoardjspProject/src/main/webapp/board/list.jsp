<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,com.it.dao.*,java.text.*"%>
<jsp:useBean id="dao" class = "com.it.dao.BoardDAO"/>
<%
	//1. 사용자 입력값 받기(page)
	String strpage = request.getParameter("page");
	if(strpage == null){
		strpage = "1";
	}
	int curpage = Integer.parseInt(strpage);
	//2. 데이터베이스로부터 데이터를 읽어온다.
	List<BoardVO> list = dao.boardListData(curpage);
	int totalpage = dao.boardTotalPage();
	
	//페이지 나누기
	final int BLOCK = 3;
	int startPage = ((curpage-1)/BLOCK*BLOCK) + 1;
	int endPage = ((curpage-1)/BLOCK*BLOCK) + BLOCK;
	
	if(endPage>totalpage)
		endPage = totalpage;
	
	//오늘 날짜 
	String today = new SimpleDateFormat("yyyy-mm-dd").format(new Date()); 


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
	.container{
		magin-top : 50px;
		}
		.row{
		margin : 0px auto;
		width : 960px;
		}
		h1{
		text-align : center;
		}

</style>
</head>
<body>

	<div class="container">
	 <h1> 자유게시판 </h1>
	 <div class = "row">
		<table class="table">
		<tr>
		<td>
			<a href ="insert.jsp" class="btn btn-sm btn-success">새글</a>
		</td>
		</tr>
		</table>
	
	<table class= "table">
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
		<td class="text-center" width=10%><%=vo.getNo() %></td>
		<td width=45%>
			<a href="detail.jsp?no=<%=vo.getNo()%>"><%=vo.getSubject() %></a>%nbsp;
		</td>    
		<sup style="color:red">new</sup>
	</td>
    
    	<td class = "text-center" width=15%><%=vo.getName= %>
    
    <%
		}
    %>
	</table>	
	 </div>
	</div>
</body>
</html>