package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;
import ca.board.dao.petVO;

public class CheckController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 동물 등록 기능 + qr코드 api
		ProjectDAO dao = new ProjectDAO();
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5*1024*1024;
		String encoding="utf-8";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy() );
		String pet_regno = multi.getParameter("pet_regno");
		String dognm = multi.getParameter("dognm");
		String pet_img = multi.getFilesystemName("pet_img");
		String owner_nm= multi.getParameter("owner_nm");
		String user_id= multi.getParameter("user_id");
		petVO vo = new petVO();
		vo.setPet_regno(pet_regno);
		vo.setDognm(dognm);
		vo.setPet_img(pet_img);
		vo.setOwner_nm(owner_nm);
		vo.setUser_id(user_id);
		dao.petinsert(vo);
		return "redirect:/checkform.do";
	}

}
