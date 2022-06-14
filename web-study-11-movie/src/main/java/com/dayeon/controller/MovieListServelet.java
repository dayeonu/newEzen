package com.dayeon.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dayeon.dao.MovieDAO;
import com.dayeon.dto.MovieVO;

@WebServlet("/movieList.do")
public class MovieListServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		MovieDAO mDao = MovieDAO.getInstance();
		
		List<MovieVO> movieList = mDao.selectALLMovies();
		request.setAttribute("movieList", movieList);
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("movie/movieList.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
