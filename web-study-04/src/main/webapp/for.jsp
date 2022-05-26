<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int num; int sum; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% num = Integer.parseInt(request.getParameter("num")); %>
<h2>1부터 <%=num%>까지 자연수 합 구하기 </h2>
<%
		for(int i=1; i<=num; i++){
			if(i<num){
			sum += i;
			out.println(i + "+");
			} else if ( i == num ){
				sum += i;
			 	out.println(i + "=");
			}
		}
%>
<%=sum %>


</body>
</html>