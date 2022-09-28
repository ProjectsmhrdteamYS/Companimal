package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class SigninController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그인 기능
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
		userVO vo = new userVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		ProjectDAO dao = new ProjectDAO();
		userVO uvo = dao.loginMethod(vo);
		
		if(uvo!=null) {
			HttpSession session = request.getSession(); 
			session.setAttribute("uvo", uvo);
		}
		return "redirect:/mainpage.do";
	}

}
