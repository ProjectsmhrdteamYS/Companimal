package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ProjectDAO dao = new ProjectDAO();
		
		// 회원가입 기능
		String user_id  = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		int user_birth = Integer.parseInt(request.getParameter("user_birth"));
		String user_tel = request.getParameter("user_tel");
		String user_addr = request.getParameter("user_addr");
		String user_type = request.getParameter("user_type"); // 개인정보 동의
		userVO vo = new userVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		vo.setUser_name(user_name);
		vo.setUser_birth(user_birth);
		vo.setUser_tel(user_tel);
		vo.setUser_addr(user_addr);
		vo.setUser_type(user_type);
		dao.signupMethod(vo);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('회원가입완료되었습니다.');"
				+ "location.href='signinform.do';</script>");
		writer.flush();
	
		return null;
	}

}
