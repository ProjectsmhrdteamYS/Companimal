package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class SigninController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그인 기능
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
		userVO vo = new userVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		ProjectDAO dao = new ProjectDAO();
		userVO uvo = dao.loginMethod(vo);
		
		if(uvo!=null) {
			//로그인 성공 => 세션을 만들어 준다. ( request로 객체 바인딩 시 return하는 해당 jsp만 로그인 정보를 받아볼 수 있다)
			HttpSession session = request.getSession(); // 세션id 값이 있는지 먼저 확인 -> 있다 -> 쓰면됨 (getSession은 가지고 오는 것만 아니라 내려보내는것까지 해줌)
			// session으로 바인딩 시 동일한 session으로 jsp들이 정보를 받을 수 있음.
			session.setAttribute("uvo", uvo);
//			response.setCharacterEncoding("UTF-8");
//			response.setContentType("text/html; charset=UTF-8");
//			
//			PrintWriter out = response.getWriter();
//			out.print("<script>alert('로그인성공');</script>");
		}
		
		
		
		
//		
//		HttpSession session = request.getSession();
//		session.invalidate(); // 무효화(
//		return "redirect:/boardList.do";
//		userVO vo1 = new userVO();
//		ProjectDAO dao2 = new ProjectDAO();
//		
//		String user_name = request.getParameter("user_id");
//		String user_password = request.getParameter("user_pw");
//		vo.setUser_id(user_name);
//		vo.setUser_pw(user_password);
//		System.out.println(vo.getUser_id());
//		System.out.println(vo.getUser_pw());
//		dao.loginMethod(vo);
		
		System.out.println(vo.getUser_id());
		System.out.println(vo.getUser_pw());
		System.out.println(vo.getUser_tel());
		System.out.println(vo.getUser_addr());
		// 임시적으로 메인페이지 넘어감 그 이후에 수정할예정
		return "redirect:/mainpage.do";
	}

}
