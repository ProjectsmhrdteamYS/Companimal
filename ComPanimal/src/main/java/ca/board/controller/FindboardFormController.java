package ca.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;


public class FindboardFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// find 게시판 전체 리스트 가져오기
		ProjectDAO dao = new ProjectDAO();
		List<fboardVO> list = dao.fList();
		request.setAttribute("list", list);

		return "findboard";
	}

}
