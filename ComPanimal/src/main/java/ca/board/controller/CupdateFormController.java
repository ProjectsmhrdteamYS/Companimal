package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;

public class CupdateFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
		int c_seq = Integer.parseInt(request.getParameter("c_seq"));
		cboardVO vo = dao.cdetail(c_seq);
		request.setAttribute("vo", vo);
		
		return "cupdate";
	}

}
