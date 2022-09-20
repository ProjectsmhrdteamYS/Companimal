package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;

public class CdetailFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 상세정보 페이지 내용 불러오기

		ProjectDAO dao = new ProjectDAO();
		cboardVO vo = new cboardVO();
		int c_seq = Integer.parseInt(request.getParameter("c_seq"));
		vo = dao.cdetail(c_seq);
		dao.countc(c_seq); // 조회수 누적
		request.setAttribute("vo", vo);
		return "cdetail";
		
	}

}
