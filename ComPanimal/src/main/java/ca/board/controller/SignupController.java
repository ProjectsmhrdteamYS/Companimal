package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 회원가입 기능
		String user_id  = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String name = request.getParameter("user_name");
		int user_birth = Integer.parseInt(request.getParameter("user_birth"));
		int user_tel = Integer.parseInt(request.getParameter("user_tel"));
		String user_add = request.getParameter("user_add");
		String user_joindate = request.getParameter("user_joindate");
		String user_type = request.getParameter("user_type"); // 개인정보 동의
		
		return null;
	}

}
