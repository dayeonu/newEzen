package com.self.BoardDAO;

import java.sql.*;		//List
import java.util.*;  //Connection.PrepdaedStatment, ResultSet

public class BoardDAO {

	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	
	//serverTimezone=UTC  mysql이 8.0이상이라서, 적어줘야함 
	private final String URL = "jdbc:mysql://localhost:3306/db0416?serverTimezone=UTC";
	private final String USERNAME = "root";
	private final String PASSWORD = "1234";

	
	//드라이브 등록 
	public BoardDAO(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//mysql연결 
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	//mysql연결 해제
	public void disConnection() {
		try {
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	//1. 목록 출력
	public List<BoardVO> boardListData(int page){
		List<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			getConnection();
			//한 페이지에 표시할 게시글의 갯수를 rowSize로 지정한다. 
			int rowSize= 5;
			int start = (page -1) * rowSize;
			String sql =  "select no, subject, name, DATE_FORMAT(regdate, now()), hit "  //여기 한칸
					+ "from selfBoard order by no desc limit ?, ?";
		
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, start);
			psmt.setInt(2, rowSize);
			ResultSet rs = psmt.executeQuery();
		
		while(rs.next()) {
			BoardVO vo = new BoardVO();
			vo.setNo(rs.getInt(1));
 			vo.setSubject(rs.getString(2));
 			vo.setName(rs.getString(3));
 			vo.setDbday(rs.getString(4));
 			vo.setHit(rs.getInt(5));
 			list.add(vo);
		}//while 문의 끝 
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		} return list;
	}
	//2. 총 페이지 보여주기. 반올림 
	public int boardTotalPage() {
		int total = 0;
try {
			getConnection();
			String sql = "select ceil(count(*)/10.0) from selfBoard";
			
			psmt = conn.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			rs.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disConnection();
		}
		return total;
	}
	
	//3. Insert 새글 입력하기 
	public void boardInsert(BoardVO vo) {
		try {
			getConnection();
			String sql = "insert into selfBoard(name, subject, content,pwd,regdate) "
						+"values(?,?,?,?, now())";

			psmt = conn.prepareStatement(sql);
		 
		    psmt.setString(1, vo.getName());
		    psmt.setString(2, vo.getSubject());
		    psmt.setString(3, vo.getContent());
		    psmt.setString(4, vo.getPwd());
		    
		    psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disConnection();
		}
	}
	//4. 상세 글 클릭해서 보기 조회수도 카운트
	public BoardVO boardDetailDate(int no) {
		BoardVO vo = new BoardVO();
		try {
			//1. 연결
			getConnection();
		
			//*- 조회수 증가
			String sql = "update selfBoard set hit = hit+1 "
						+ "where no = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, no);
			psmt.executeUpdate();
			//2. sql문장
			sql = "select no, name, subject, content, DATE_FORMAT(regdate, '%Y-%m-%d'), hit " 
					+"from selfBoard where no = ?";
			//3. 전송
			psmt = conn.prepareStatement(sql);
			//4. 빈칸 채우기
			psmt.setInt(1, no);
			//5. 실행
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				vo.setNo(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setDbday(rs.getString(5));
				vo.setHit(rs.getInt(6));
				rs.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			disConnection();
		}
		return vo;
	}
	
	//5. 글 수정하기(Update)
	//6. 글 수정 시 비번 동일한지 확인하기 
	//7. 글 삭제 시 비번동일한지 확인하기

}