package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.saeyan.dto.EmpVO;

import jdk.jshell.spi.ExecutionControl.ExecutionControlException;
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

	// 아이디는 프라이머리 키가 된다 
	public EmpVO selectoneEmployeeByID(String id) {
		String sql ="select * from Employees where id=?";
		EmpVO pVo = new EmpVO();

		try {
			conn=DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id); //--
			rs=pstmt.executeQuery(); // select 의 경우만 executeQuery 실행

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


	public void insertEmployee(EmpVO vo) {
		String sql= "insert into Employees(id, pass, name, lev, gender, phone) "
				+ "values(?, ?, ?, ?, ?, ?)";
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getLev());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getPhone());

			pstmt.executeUpdate();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}


	public void updateEmployee(EmpVO vo) {
		String sql="update employees set pass=?, name=?, lev=?, gender=?, phone=? where id=?";

		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPass());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getLev());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getPhone());
			pstmt.setString(6, vo.getId());

			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}


	public void deleteEmployee(String id) {
		String sql= "delete Employees where id=?";

		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);

			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}
