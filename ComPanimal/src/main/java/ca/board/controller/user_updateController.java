package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class user_updateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user_name=request.getParameter("user_name");
		String user_pw=request.getParameter("user_pw");
		int user_tel = Integer.parseInt(request.getParameter("user_tel"));
		String user_addr = request.getParameter("user_addr");
		userVO vo = new userVO();
		vo.setUser_pw(user_pw);
		vo.setUser_tel(user_tel);
		vo.setUser_addr(user_addr);
		vo.setUser_name(user_name);
	
		ProjectDAO dao = new ProjectDAO();
		dao.user_update(vo);
		System.out.println(vo.getUser_name());
		System.out.println(vo.getUser_pw());
		System.out.println(vo.getUser_tel());
		System.out.println(vo.getUser_addr());
	
		return "redirect:/mainpage.do";
	}

}
