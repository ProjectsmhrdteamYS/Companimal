package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ca.board.dao.ProjectDAO;
import ca.board.dao.petVO;

public class PetListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectDAO dao = new ProjectDAO();
		petVO vo = new petVO();
		String user_id = request.getParameter("user_id");
		vo.setUser_id(user_id);
		List<petVO> list = dao.petlist(vo);
		request.setAttribute("list",list);
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		out.print(gson.toJson(list));
		return null;
	}

}
