package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EmpJoinFormAction implements Action {

	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {

		
		String url = "emp/empJoinForm.jsp";
		
		RequestDispatcher dispatcher = reqeust.getRequestDispatcher(url);
		dispatcher.forward(reqeust, response);
	}

}
