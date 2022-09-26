package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ca.board.dao.ProjectDAO;
import ca.board.dao.petVO;

public class QrCatchController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
		petVO vo = new petVO();
		String pet_regno = request.getParameter("pet_regno");
		vo.setPet_regno(pet_regno);
		petVO pvo = dao.search(vo);
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		out.print(gson.toJson(pvo));
		return null;
	}

}
