package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ca.board.dao.ProjectDAO;
import ca.board.dao.cboardVO;
import ca.board.dao.petVO;

public class PetimgController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
//		
		String reg_no = request.getParameter("fname");
		petVO vo = new petVO();
		vo.setPet_regno(reg_no);
		petVO pvo = dao.search(vo);
		
		System.out.println(pvo);
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// JavaScript Object Notation
		// JSON
		// Gson 사용
		Gson gson = new Gson();
		out.print(gson.toJson(pvo));
		
		// ajax할땐 null로 해둘것
		return null;
	}

}
