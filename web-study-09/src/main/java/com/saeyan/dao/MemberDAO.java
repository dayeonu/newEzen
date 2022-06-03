package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.saeyan.dto.MemberVO;

public class MemberDAO {
	private MemberDAO() {
	}
	//싱글 톤 패턴으로 객체 생성 
	private static MemberDAO instance= new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	};

	public Connection getConnection() throws Exception { //db연결문 
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		Connection conn = ds.getConnection();
		return conn;
	}

	public int userCheck(String userid, String pwd){

		int result = -1;
		String sql= "select pwd from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn= getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				if(rs.getString("pwd").equals(pwd) && rs.getString("pwd") != null ) {
					result = 1;  //userid, pwd 일치(기본회원)
				} else {
					result = 0; // pwd 불일치 
				}
			}else { //기존 회원이 아니다. 신규 
				result = -1;
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null) rs.close();
				if(pstmt !=null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public MemberVO getMember(String userid) {
	
		MemberVO mVo = null;
		String sql = "select * from member where userid=?"; //아이디가 중복인지 체크 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
	
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setName(rs.getString("name"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setEmail(rs.getString("email"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setAdmin(rs.getInt("admin"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}return mVo;
	}

	public int confirmID(String userid) {
		
		int result = -1;
		
		String sql = "select userid from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1; //아이디 중복 
			}else {
				result = -1; // 아이디 허용 
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public int insertMember(MemberVO mVo) {
		
		int result = -1;
		String sql = "insert into member(name,userid,pwd,email,phone,admin)"
						+ "values(?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
		conn = getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mVo.getName());
		pstmt.setString(2, mVo.getUserid());
		pstmt.setString(3, mVo.getPwd());
		pstmt.setString(4, mVo.getEmail());
		pstmt.setString(5, mVo.getPhone());
		pstmt.setInt(6, mVo.getAdmin());
			
		result = pstmt.executeUpdate();	
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int updateMember(MemberVO mVo) {
		int result= -1;
		
		String sql="update member set pwd=?, email=?, phone=?, admin=? where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(2, mVo.getEmail());
			pstmt.setString(3, mVo.getPhone());
			pstmt.setInt(4, mVo.getAdmin());
			pstmt.setString(5, mVo.getUserid());
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
