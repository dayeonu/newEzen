<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="com.self.BoardDAO.BoardDAO"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.self.BoardDAO.BoardVO">
	<jsp:setProperty property="*" name="vo"/>
</jsp:useBean>
<%
	dao.boardInsert(vo);
	response.sendRedirect("mainBoard.jsp");
%>