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


public class CupdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
		cboardVO  vo = new cboardVO();
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5*1024*1024;
		String encoding="utf-8";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy() );
		int c_seq = Integer.parseInt(multi.getParameter("c_seq"));
		String c_title = multi.getParameter("c_title");
		String c_content = multi.getParameter("c_content");
		String c_file = multi.getFilesystemName("c_file");
		vo.setC_seq(c_seq);
		vo.setC_title(c_title);
		vo.setC_content(c_content);
		vo.setC_file(c_file);
		dao.cupdate(vo);
		return "redirect:/boardform.do";
	}

}
