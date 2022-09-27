package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ca.board.dao.ProjectDAO;
import ca.board.dao.fboardVO;
import ca.board.dao.petVO;
import ca.board.dao.userVO;

public class user_updateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProjectDAO dao = new ProjectDAO();
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5*1024*1024;
		String encoding="utf-8";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy() );
		
		//user update
		String user_name = multi.getParameter("user_name");
		String user_id = multi.getParameter("user_id");
		String user_pw= multi.getParameter("user_pw");
		String user_addr = multi.getParameter("user_addr");
		int user_birth = Integer.parseInt(multi.getParameter("user_birth"));
		String user_tel = multi.getParameter("user_tel");
		String user_type = multi.getParameter("user_type");
		userVO  uvo = new userVO();
		uvo.setUser_name(user_name);
		uvo.setUser_id(user_id);
		uvo.setUser_pw(user_pw);
		uvo.setUser_addr(user_addr);
		uvo.setUser_birth(user_birth);
		uvo.setUser_tel(user_tel);
		uvo.setUser_type(user_type);
		dao.user_update(uvo);
		
		//pet update
//		String dognm = multi.getParameter("dognm");
//		String pet_QR = multi.getParameter("pet_QR");
		String pet_img = multi.getFilesystemName("pet_img");
		String pet_regno = multi.getParameter("pet_regno");
//		int pet_sta = Integer.parseInt(multi.getParameter("pet_sta"));
		petVO pvo = new petVO();
//		pvo.setDognm(dognm);
//		pvo.setPet_QR(pet_QR);
		pvo.setPet_img(pet_img);
		pvo.setPet_regno(pet_regno);
//		pvo.setPet_sta(pet_sta);
		dao.petupdate(pvo);
		
//		HttpSession session = request.getSession();
//		session.invalidate();
		return "redirect:/mainpage.do";
	}

}
