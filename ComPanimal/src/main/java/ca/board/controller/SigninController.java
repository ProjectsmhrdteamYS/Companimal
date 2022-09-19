package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class SigninController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그인 기능
		userVO vo = new userVO();
		ProjectDAO dao = new ProjectDAO();
		
		String user_name = request.getParameter("user_id");
		String user_password = request.getParameter("user_pw");
		vo.setUser_id(user_name);
		vo.setUser_pw(user_password);
		System.out.println(vo.getUser_id());
		System.out.println(vo.getUser_pw());
		dao.loginMethod(vo);
		
		
		// 임시적으로 메인페이지 넘어감 그 이후에 수정할예정
		return "redirect:/mainpage.do";
	}

}
