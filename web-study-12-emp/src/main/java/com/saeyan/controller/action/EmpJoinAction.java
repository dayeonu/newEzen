package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.EmpDAO;
import com.saeyan.dto.EmpVO;

public class EmpJoinAction implements Action {

	@Override
	public void execute(HttpServletRequest reqeust, HttpServletResponse response) throws ServletException, IOException {
		
		EmpVO vo = new EmpVO();
		vo.setId(reqeust.getParameter("id"));
		vo.setPass(reqeust.getParameter("pass"));
		vo.setName(reqeust.getParameter("name"));
		vo.setLev(reqeust.getParameter("lev"));
		vo.setGender(reqeust.getParameter("gender"));
		vo.setPhone(reqeust.getParameter("phone"));
		
		EmpDAO dao = EmpDAO.getInstance();
		dao.insertEmployee(vo);
		
		new EmpListFormAction().execute(reqeust, response);
	}
}
