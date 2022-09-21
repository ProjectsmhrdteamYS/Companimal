package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;


public class CupdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
		cboardVO vo = new cboardVO();
		int c_seq = Integer.parseInt(request.getParameter("c_seq"));
		String c_title = request.getParameter("c_title");
		String c_content = request.getParameter("c_content");
		vo.setC_seq(c_seq);
		vo.setC_title(c_title);
		vo.setC_content(c_content);
		dao.cupdate(vo);
		return "redirect:/boardform.do";
	}

}
