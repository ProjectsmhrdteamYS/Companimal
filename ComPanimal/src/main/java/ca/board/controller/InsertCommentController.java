package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.mentVO;

public class InsertCommentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
		
		int c_seq = Integer.parseInt(request.getParameter("c_seq"));
		String cmt_content = request.getParameter("cmt_content");
		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		mentVO vo = new mentVO();
		
		vo.setC_seq(c_seq);
		vo.setUser_name(user_name);
		vo.setCmt_content(cmt_content);
		vo.setUser_id(user_id);
		
		dao.insertcomment(vo);
		
		return "redirect:/cdetailform.do?c_seq="+c_seq;
	}

}
