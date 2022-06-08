package com.self.BoardDAO;

import java.util.*;

public class BoardVO {

	private int no, hit;
	private String name, subject, content, pwd, dbday;
	private Date regdate;
	
	/*create table selfBoard(
	 * no int auto_increment,
	 * name varchar(34) not null,
	 * subject varchar(100) not null,
	 * content text not null,
	 * pwd varchar(10) not null,
	 * regdate datetime,
	 * hit int default 0,
	 * primary key(no) 
	 * );
	 */
	//DATETIME타입은 YYYY-MM-DD hh:mm:ss 의 형식을 가진다.
	//반면 DATE타입은 YYYY-MM-DD 의 형식을 가지며 DATE_FORMAT으로 %Y-%m-%d %h:%m:%s 형식을 지정하면
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getDbday() {
		return dbday;
	}
	public void setDbday(String dbday) {
		this.dbday = dbday;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}








}
