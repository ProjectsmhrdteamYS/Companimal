package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class Search_qr_userController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				// QR 이미지 userDB로 접근 조회 페이지
		
				// QR에서 등록번호 찾고 
				//       등록번호로 petDB에서 userID 찾고
				//		 userID로 userDB에서 정보 가져오기
				ProjectDAO dao =new ProjectDAO();
				
				String user_id = request.getParameter("user_id");//동물등록번호 - 문자열
				
				System.out.println("request.getParameter(user_id):"+user_id);
				
				userVO vo = new userVO();
				vo.setUser_id(user_id); // pet_regno 입력해서추출하려고
				userVO uvo = dao.userList(vo); // dao에서 searchQR 동물DB 가져오기실행(리턴 vo객체전체)
				
				response.setCharacterEncoding("UTF-8");
				PrintWriter out = response.getWriter();
				// JavaScript Object Notation
				// JSON
				// Gson 사용
				Gson gson = new Gson();
				out.print(gson.toJson(uvo));		
						
		return null;
	}

}
