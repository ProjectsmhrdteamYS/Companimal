package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;


public class CdetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		ProjectDAO dao = new ProjectDAO();
		int cseq = Integer.parseInt(request.getParameter("c_seq"));
		cboardVO vo = dao.cdetail(cseq);
		dao.cUpdate(cseq); // 조회수 누적
		request.setAttribute("vo", vo);

		return "cdetail";
		
	}

}
