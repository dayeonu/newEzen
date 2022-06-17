package com.saeyan.controller.action;

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

		if(command.equals("emp_list")) { // 사원 리스트 출력 
			action = new EmpListFormAction();
		}else if(command.equals("emp_view")) { // 사원 정보 보기
			action = new EmpViewAction();
		}else if(command.equals("emp_join_form")) { // 사원 정보 등록(입력 받기)
			action = new EmpJoinFormAction();
		}else if(command.equals("emp_join")) { //정보입력 받아서 전송 
			action = new EmpJoinAction();
		}else if(command.equals("emp_update_form")){ // 사원 정보 수정
			action = new EmpUpdateFormAction();
		}else if(command.equals("emp_update")) { // 수정된 사원 정보 등록(입력받기)
			action = new EmpUpdateAction();
		}else if(command.equals("emp_delete")) {
			action = new EmpDeleteAction();
		}
		
		return action;
	}
}
