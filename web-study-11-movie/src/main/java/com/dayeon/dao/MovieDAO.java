package com.dayeon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dayeon.dto.MovieVO;

import util.DBManager;

public class MovieDAO {
	private MovieDAO() {}
	
	private static MovieDAO instance = new MovieDAO();
	
	public static MovieDAO getInstance() {
		return instance;
	}

	
	public List<MovieVO> selectALLMovies(){
		String sql = "select * from movie order by code desc";
		List<MovieVO> list = new ArrayList<MovieVO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnetion();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MovieVO mVo = new MovieVO();
				mVo.setTitle(rs.getString("title"));
				mVo.setDirector(rs.getString("director"));
				mVo.setActor(rs.getString("actor"));
				mVo.setPrice(rs.getInt("price"));
				list.add(mVo);
			}//while 문의 끝 
			}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.closeConnection(conn, pstmt, rs);
		}
		return list;
	} //selectALLMovies() 문의 끝 

	public void insertMovie(MovieVO mVo) {
		String sql ="insert into movie values(movie_seq.nextval, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnetion();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mVo.getTitle());
			pstmt.setInt(2,mVo.getPrice());
			pstmt.setString(3,mVo.getDirector());
			pstmt.setString(4,mVo.getActor());
			pstmt.setString(5,mVo.getSynopsis());
			pstmt.setString(6,mVo.getPoster());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.closeConnection(conn, pstmt);
		}
	}
}

	public MovieVO selectMovieByCode(String code) {
		String sql = "";
	}
