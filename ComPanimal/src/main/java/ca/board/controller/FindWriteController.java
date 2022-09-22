package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;
import ca.board.dao.userVO;

public class FindWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 찾아주세요 게시판 글쓰기 기능
		ProjectDAO dao = new ProjectDAO();
		
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5*1024*1024;
		String encoding="utf-8";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy() );
		
		String writer = multi.getParameter("user_id");
		String f_title = multi.getParameter("f_title");
		String f_content = multi.getParameter("f_content");
		String f_file = multi.getFilesystemName("f_file");
		
		fboardVO vo = new fboardVO();
		vo.setUser_id(writer);
		vo.setF_title(f_title);
		vo.setF_content(f_content);
		vo.setF_file(f_file);
		dao.insertf(vo);
		
		return "redirect:/findboardform.do";
	}

}
