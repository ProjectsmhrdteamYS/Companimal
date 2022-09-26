package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class idCheckController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("euc-kr");
		
		String user_id = request.getParameter("user_id");
		userVO vo = new userVO();
		vo.setUser_id(user_id);
		ProjectDAO dao = new ProjectDAO();
		String idcheck = dao.user_idcheck(vo);
		
		PrintWriter out = response.getWriter();
		if (idcheck == "0") {
			System.out.println("이미 존재하는 아이디입니다.");
		} else if (idcheck == "1") {
			System.out.println("사용가능한 아이디입니다.");
		}
		out.write(idcheck + "");
		return null;
	}

}
