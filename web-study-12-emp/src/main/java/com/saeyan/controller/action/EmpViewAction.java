package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmpDAO;
import com.saeyan.dto.EmpVO;

//상세보기 화면
public class EmpViewAction implements Action {

	
	 
	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "emp/empView.jsp";
		String id = reqeust.getParameter("id"); // 클라이언트에게서 전달 받은 id 값
		EmpDAO dao = EmpDAO.getInstance();
	
		EmpVO vo = dao.selectoneEmployeeByID(id); // 메소드 이동 
		reqeust.setAttribute("emp", vo); // setAttribute(name, value) 속성이름과 속성값 위 메소드 에서 받아온 내용이다.
										// request객체에 저장해서 보내줌 
		
		RequestDispatcher dispatcher = reqeust.getRequestDispatcher(url); // 이동할 페이지 지정.. 
		dispatcher.forward(reqeust, response);
	}

}
