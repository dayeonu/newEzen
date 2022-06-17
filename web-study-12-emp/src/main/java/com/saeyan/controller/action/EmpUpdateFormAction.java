package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmpDAO;
import com.saeyan.dto.EmpVO;

public class EmpUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {

		String url = "emp/empUpdate.jsp";
		
		String id = reqeust.getParameter("id");
		EmpDAO dao = EmpDAO.getInstance();
		
		EmpVO vo = new EmpVO();
		vo=dao.selectoneEmployeeByID(id);
		
		reqeust.setAttribute("emp", vo);
		
		RequestDispatcher dispatcher = reqeust.getRequestDispatcher(url);
		dispatcher.forward(reqeust, response);
	}

}
