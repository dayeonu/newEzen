package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
		request.setAttribute("mVo", mVo); // 회원 정보를 요청 객체에 저장한다. 하지 않으면 데이터 날아가고 null 값나옴 
		RequestDispatcher dispatchar = request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatchar.forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String userid= request.getParameter("userid");
		String pwd= request.getParameter("pwd");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		String admin= request.getParameter("admin");
		//회원 정보를 저장할 객체 생성
		MemberVO mVo = new MemberVO();
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin));

		MemberDAO mDao = MemberDAO.getInstance();
		mDao.updateMember(mVo);
		response.sendRedirect("login.do");
	}

}
