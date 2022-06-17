package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmpDAO;

public class EmpDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {

		String id= reqeust.getParameter("id");
		
		EmpDAO dao = EmpDAO.getInstance();
		dao.deleteEmployee(id);
		
		new EmpListFormAction().execute(reqeust, response);
	}

}
