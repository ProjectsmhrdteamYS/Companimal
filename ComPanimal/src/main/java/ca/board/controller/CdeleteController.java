package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;


public class CdeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		ProjectDAO dao = new ProjectDAO();
		
		int c_seq = Integer.parseInt(request.getParameter("c_seq"));
		dao.mentDelete(c_seq);
		dao.cboardDelete(c_seq);
		return "redirect:/boardform.do";
	}

}
