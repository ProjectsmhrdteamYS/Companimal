package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;

public class FindUpdateFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
		int f_seq = Integer.parseInt(request.getParameter("f_seq"));
		fboardVO vo = new fboardVO();
		vo = dao.fdetail(f_seq);
		request.setAttribute("vo", vo);
		return "fupdate";
	}

}
