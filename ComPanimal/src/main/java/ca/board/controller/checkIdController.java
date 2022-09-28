package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.SignupDAO;

public class checkIdController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("EUC-KR");
		
		String user_id = request.getParameter("user_id");
		System.out.println(user_id);
		PrintWriter out = response.getWriter();
		
		SignupDAO dao = new SignupDAO();
		
		int idcheck = dao.checkId(user_id);
		
		if(idcheck == 0) {
			System.out.println(user_id);
			System.out.println("이미 존재하는 아이디입니다. ");
		}else if(idcheck == 1) {
			System.out.println(idcheck);
			System.out.println("사용 가능한 아이디입니다.");
		}
		out.write(idcheck + "");
		return null;
		
	}

}
