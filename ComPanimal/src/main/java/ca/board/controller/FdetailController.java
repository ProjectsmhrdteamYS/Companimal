package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;

public class FdetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// find게시판 수정 기능
		ProjectDAO dao = new ProjectDAO();
		fboardVO  vo = new fboardVO();
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5*1024*1024;
		String encoding="utf-8";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy() );
		int f_seq = Integer.parseInt(multi.getParameter("f_seq"));
		String f_title = multi.getParameter("f_title");
		String f_content = multi.getParameter("f_content");
		String f_file = multi.getFilesystemName("f_file");
		vo.setF_seq(f_seq);
		vo.setF_title(f_title);
		vo.setF_content(f_content);
		vo.setF_file(f_file);
		dao.fUpdate(vo);
		return "redirect:/findboardform.do";
	}

}
