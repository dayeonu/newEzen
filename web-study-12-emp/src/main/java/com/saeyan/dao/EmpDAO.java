package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.saeyan.dto.EmpVO;

import util.DBManager;

public class EmpDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs= null;
	
	//싱글톤 
	private EmpDAO() {	
	}
	private static EmpDAO instance= new EmpDAO();
	public static EmpDAO getInstance() {
		return instance;
	}
	

public List<EmpVO> empAllBoards(){
	
	String sql = "select * from Employees order by id desc";

	List<EmpVO> list = new ArrayList<EmpVO>();
	
	try {
		conn = DBManager.getConnection();
		pstmt=conn.prepareStatement(sql);	
		rs=pstmt.executeQuery();
		while(rs.next()) {
		EmpVO pVo = new EmpVO();
			pVo.setId(rs.getString("id"));
			pVo.setPass(rs.getString("pass"));
			pVo.setName(rs.getString("name"));
			pVo.setLev(rs.getString("lev"));
			pVo.setEnter(rs.getTimestamp("enter"));
			pVo.setGender(rs.getNString("gender"));
			pVo.setPhone(rs.getString("phone"));
			
			list.add(pVo);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		DBManager.close(conn, pstmt, rs);

	}return list;
}


public EmpVO selectoneEmployeeByID(String id) {
	String sql ="select * from Employees where id=?";
	EmpVO pVo = new EmpVO();
	
	try {
	conn=DBManager.getConnection();
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	rs=pstmt.executeQuery();
	if(rs.next()) {
		pVo.setId(rs.getString("id"));
		pVo.setName(rs.getString("name"));
		pVo.setPass(rs.getString("pass"));
		pVo.setLev(rs.getString("lev"));
		pVo.setEnter(rs.getTimestamp("enter"));
		pVo.setGender(rs.getNString("gender"));
		pVo.setPhone(rs.getString("phone"));
		
	}
	
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		DBManager.close(conn, pstmt);
	}
	
	return pVo;
}
}
