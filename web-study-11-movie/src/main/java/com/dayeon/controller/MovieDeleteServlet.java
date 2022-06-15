package com.dayeon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dayeon.dao.MovieDAO;
import com.dayeon.dto.MovieVO;

@WebServlet("/movieDelete.do")
public class MovieDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String code = request.getParameter("code");
	
	MovieDAO mDao = MovieDAO.getInstance();
	MovieVO mVo = mDao.selectMovieByCode(code);
	
	// setAttribute(String name, Object value)  이름이 name인 속성의 값을 value로 지정한다. 
	request.setAttribute("movie", mVo);
	RequestDispatcher dispatcher = request.getRequestDispatcher("movie/movieDelete.jsp");
	dispatcher.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String code= request.getParameter("code");
		
		MovieDAO mDao = MovieDAO.getInstance();
		mDao.deleteMovie(code);
		
		response.sendRedirect("movieList.do");
	
	}
}
