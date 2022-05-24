<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" import="java.text.SimpleDateFormat"%>
<%!
int global_cnt=0;
//주석문입니다. 
%>
<!--  주석문 입니다.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	Calendar date = Calendar.getInstance();
	SimpleDateFormat today= new SimpleDateFormat("yyyy년 mm월 dd일");
	SimpleDateFormat now= new SimpleDateFormat("hh시 mm분 ss초");

	int local_cnt=0; //주석문 입니다. 

	out.print("<br> local_cnt : ");
	out.print(++local_cnt);
	
	out.print("<br> global_cnt : ");
	out.print(++global_cnt);

%>
<br>
오늘 날짜는: <%= today.format(date.getTime()) %> <br>
현재 시간은: <%= now.format(date.getTime()) %> 
</body>
</html>