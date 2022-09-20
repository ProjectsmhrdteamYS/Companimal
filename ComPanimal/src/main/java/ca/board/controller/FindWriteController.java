package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;
import ca.board.dao.userVO;

public class FindWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 찾아주세요 게시판 글쓰기 기능
		ProjectDAO dao = new ProjectDAO();
		String writer = request.getParameter("user_id");
		String f_title = request.getParameter("f_title");
		String f_content = request.getParameter("f_content");
		String f_file = request.getParameter("f_file");
		fboardVO vo = new fboardVO();
		vo.setUser_id(writer);
		vo.setF_title(f_title);
		vo.setF_content(f_content);
		vo.setF_file(f_file);
		dao.insertf(vo);
		
		return "redirect:/findboardform.do";
	}

}
