package com.dayeon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dayeon.dao.MovieDAO;
import com.dayeon.dto.MovieVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/movieWrite.do")
public class MovieWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("movie/movieWrite.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		String encType = "utf-8";
		int sizeLimit= 100* 1024 *1024;
		
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());//파일명 중복x
		
		String title= multi.getParameter("title");
		int price = Integer.parseInt(multi.getParameter("price"));
		String director = multi.getParameter("director");
		String actor = multi.getParameter("actor");
		String synopsis = multi.getParameter("synopsis");
		String poster = multi.getFilesystemName("poster");
		
		MovieVO mVo = new MovieVO();
		mVo.setTitle(title);
		mVo.setPrice(price);
		mVo.setDirector(director);
		mVo.setActor(actor);
		mVo.setSynopsis(synopsis);
		mVo.setPoster(poster);
		
		MovieDAO mDao = MovieDAO.getInstance();
		int result = mDao.insertMovie(mVo);
		if(result == 1) {
			response.sendRedirect("movieList.do");
		}else {
			response.sendRedirect("movieWrite.do");
			
		}
	}
}
