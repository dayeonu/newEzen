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
	
	//타입 지정 제네릭스: MovieVO 타입만 접근 가능하다 
	public List<MovieVO> selectALLMovie(){
		String sql = "select * from movie order by code desc";
		List<MovieVO> list = new ArrayList<MovieVO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnetion();
			pstmt = conn.prepareStatement(sql); //sql문 전송
			rs = pstmt.executeQuery();
			while(rs.next()){
				MovieVO mVo = new MovieVO();
				mVo.setCode(rs.getInt("code"));
				mVo.setTitle(rs.getString("title"));
				mVo.setPrice(rs.getInt("price"));
				mVo.setDirector(rs.getString("director"));
				mVo.setActor(rs.getString("actor"));
				mVo.setPoster(rs.getString("poster"));
				mVo.setSynopsis(rs.getString("synopsis"));
				list.add(mVo);
			}//while 문의 끝 
			}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.closeConnection(conn, pstmt, rs);
		}
		return list;
	} //selectALLMovies() 문의 끝 

	public int insertMovie(MovieVO mVo) {
		String sql ="insert into movie values(movie_seq.nextval, ?, ?, ?, ?, ?, ?)";
		int result = -1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			
			conn = DBManager.getConnetion();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mVo.getTitle());
			pstmt.setInt(2,mVo.getPrice());
			pstmt.setString(3,mVo.getDirector());
			pstmt.setString(4,mVo.getActor());
			pstmt.setString(5,mVo.getPoster());
			pstmt.setString(6,mVo.getSynopsis());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.closeConnection(conn, pstmt);
		} return result;
	}

	public MovieVO selectMovieByCode(String code) {
		String sql = "select * from movie where code=?";
		MovieVO mVo = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DBManager.getConnetion();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, code);
				rs = pstmt.executeQuery();
				if(rs.next()) {	// 넘겨올 값이 있으면 next
					mVo = new MovieVO();
					mVo.setCode(rs.getInt("code"));
					mVo.setTitle(rs.getString("title"));
					mVo.setPrice(rs.getInt("price"));
					mVo.setDirector(rs.getString("director"));
					mVo.setActor(rs.getString("actor"));
					mVo.setPoster(rs.getString("poster"));
					mVo.setSynopsis(rs.getString("synopsis"));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.closeConnection(conn, pstmt, rs);
			} return mVo;
		}
	
	public void updateMovie(MovieVO mVo) {
		String sql =" update movie set title=?, price=?, director=?, actor=?, poster=?, synopsis=? "
				+ "where code=? ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnetion();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getTitle());
			pstmt.setInt(2, mVo.getPrice());
			pstmt.setString(3, mVo.getDirector());
			pstmt.setString(4, mVo.getActor());
			pstmt.setString(5, mVo.getPoster());
			pstmt.setString(6, mVo.getSynopsis());
			pstmt.setInt(7, mVo.getCode());
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.closeConnection(conn, pstmt);
		}
	}

	public void deleteMovie(String code) {
		String sql = "delete movie where code=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn= DBManager.getConnetion();
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, code);
			pstmt.executeUpdate(); //sql문 실행 
			
		} catch(Exception e){
			e.printStackTrace();
		}finally {
			DBManager.closeConnection(conn, pstmt);
		}
	}
}
