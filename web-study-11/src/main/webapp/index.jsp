<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<form method="post" action="form" name="frm"><br>
	&nbsp;&nbsp;&nbsp;<input type="button" onclick="goPopup()"  value="주소검색" name="addr" class="btn btn-primary" size="100"><br><br>
	&nbsp;주&nbsp;&nbsp;소 : <input type ="text" id="address" name="addr" size="100" required="required" readonly="readonly">

<script language="javascript">
function goPopup(){
	var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
	document.frm.address.value = roadFullAddr;
}
</script>
</form>
</body>
</html>