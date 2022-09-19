package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;

public class BoardWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 글쓰기 기능
		ProjectDAO dao = new ProjectDAO();
		String c_title = request.getParameter("c_title");
		String c_content = request.getParameter("c_content");
		
		String c_file = request.getParameter("c_file");
		String user_id = request.getParameter("user_id");
		cboardVO vo = new cboardVO();
		
		
		vo.setC_title(c_title);
		vo.setC_content(c_content);
		
		vo.setC_file(c_file);
		vo.setUser_id(user_id);
	
		dao.insertc(vo);
		
		return "redirect:/boardList.do";
	}

}
