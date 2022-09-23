package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;

public class commentDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProjectDAO dao = new ProjectDAO();
		int cmt_seq = Integer.parseInt(request.getParameter("cmt_seq"));
		int c_seq = Integer.parseInt(request.getParameter("c_seq"));
		dao.commentDelete(cmt_seq);
		

		return "redirect:/cdetailform.do?c_seq="+c_seq;
	}

}
