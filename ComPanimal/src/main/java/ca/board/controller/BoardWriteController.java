package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;
import ca.board.dao.fboardVO;

public class BoardWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 글쓰기 기능
		ProjectDAO dao = new ProjectDAO();
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5*1024*1024;
		String encoding="utf-8";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy() );
		
		String user_id = multi.getParameter("user_id");
		String writer = multi.getParameter("user_name");
		String c_title = multi.getParameter("c_title");
		String c_content = multi.getParameter("c_content");
		String c_file = multi.getFilesystemName("c_file");
		
		cboardVO vo = new cboardVO();
		vo.setUser_id(user_id);
		vo.setUser_name(writer);
		vo.setC_title(c_title);
		vo.setC_content(c_content);
		vo.setC_file(c_file);
		dao.insertc(vo);
		
		return "redirect:/boardform.do";
	}

}
