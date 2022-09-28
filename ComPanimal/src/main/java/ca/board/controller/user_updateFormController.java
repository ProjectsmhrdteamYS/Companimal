package ca.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;
import ca.board.dao.petVO;
import ca.board.dao.userVO;

public class user_updateFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user_id = request.getParameter("user_id");
		ProjectDAO dao = new ProjectDAO();
		petVO pvo = new petVO();
		pvo.setUser_id(user_id);
		List<petVO> plist = dao.petlist(pvo);
		request.setAttribute("plist", plist);
		
		return "user_update";
	}
}
