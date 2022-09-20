package ca.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;

public class BoardFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 커뮤니티 게시판 목록 불러오기
//		ProjectDAO dao = new ProjectDAO();
//		List<cboardVO> list = dao.cList();
//		request.setAttribute("list", list);
		return "board";
	}

}
