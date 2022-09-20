package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;

public class FdetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// find게시판 수정 기능
		ProjectDAO dao = new ProjectDAO();
		fboardVO  vo = new fboardVO();
		int f_seq = Integer.parseInt(request.getParameter("f_seq"));
		String f_title = request.getParameter("f_title");
		String f_content = request.getParameter("f_content");
		vo.setF_seq(f_seq);
		vo.setF_title(f_title);
		vo.setF_content(f_content);
		dao.fUpdate(vo);
		return "redirect:/findboardform.do";
	}

}
