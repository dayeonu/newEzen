package com.saeyan.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmpDAO;
import com.saeyan.dto.EmpVO;

public class EmpListFormAction implements Action{
	
	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {

		String url="emp/empList.jsp";
		
		EmpDAO eDao = EmpDAO.getInstance();
		
		List<EmpVO> emplist = eDao.empAllBoards();
		
		reqeust.setAttribute("emplist", emplist);
		
		RequestDispatcher dispatcher = reqeust.getRequestDispatcher(url);
		dispatcher.forward(reqeust, response);
		
	}

}
