package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.controller.action.Action;
import com.saeyan.dao.EmpDAO;
import com.saeyan.dto.EmpVO;

public class EmpViewAction implements Action {

	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {
		String url = "emp/empView.jsp";
		
		String id = reqeust.getParameter("id");
		
		EmpDAO dao = EmpDAO.getInstance();
		EmpVO vo = dao.selectoneEmployeeByID(id);
		
		reqeust.setAttribute("emp", vo);
		
		RequestDispatcher dispatcher = reqeust.getRequestDispatcher(url);
		dispatcher.forward(reqeust, response);
	}

}
