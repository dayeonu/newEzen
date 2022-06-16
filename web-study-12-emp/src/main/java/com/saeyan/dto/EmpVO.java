package com.saeyan.dto;

import java.sql.Timestamp;

import lombok.Data;

/*
create table EMPLOYEES(
	    id VARCHAR2(10) NOT NULL,
	    pass VARCHAR2(10) NOT NULL,
	    name VARCHAR2(24),
	    lev char(1) DEFAULT 'A',
	    enter DATE DEFAULT SYSDATE,
	    gender CHAR(1) DEFAULT '1',
	    phone VARCHAR2(30),
	    PRIMARY KEY(id)
	    );*/

@Data
public class EmpVO {
	private String 	id;
	private String 	pass;
	private String 	name;
	private String 	lev;
	private Timestamp enter; 
 	private String 	gender;
	private String 	phone;
}
