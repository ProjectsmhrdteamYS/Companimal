package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;

public class FdetailFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// find 게시판 상세보기 내용 가져오기
		ProjectDAO dao = new ProjectDAO();
		fboardVO vo = new fboardVO();
		int f_seq = Integer.parseInt(request.getParameter("f_seq"));
		vo = dao.fdetail(f_seq);
		dao.countf(f_seq);
		request.setAttribute("vo", vo);
		return "fdetail";
		
	}

}
