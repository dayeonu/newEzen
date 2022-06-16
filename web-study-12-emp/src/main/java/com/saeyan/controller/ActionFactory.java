package com.saeyan.controller;

import com.saeyan.controller.action.Action;
import com.saeyan.controller.action.EmpListAction;

public class ActionFactory {
	
	private static ActionFactory instance=new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" +command);
		
		if(command.equals("emp_list")) {
			action = new EmpListAction();
		}else if(command.equals("emp_view")) {
			action = new EmpViewAction();
		}
		return action;
	}
}
