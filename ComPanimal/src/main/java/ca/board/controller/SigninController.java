package ca.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		userVO mvo = dao.loginMethod(vo);
		
		if(mvo!=null) {
			//로그인 성공 => 세션을 만들어 준다. ( request로 객체 바인딩 시 return하는 해당 jsp만 로그인 정보를 받아볼 수 있다)
			HttpSession session = request.getSession(); // 세션id 값이 있는지 먼저 확인 -> 있다 -> 쓰면됨 (getSession은 가지고 오는 것만 아니라 내려보내는것까지 해줌)
			// session으로 바인딩 시 동일한 session으로 jsp들이 정보를 받을 수 있음.
			session.setAttribute("mvo", mvo);
		}
		return "redirect:/mainpage.do";
	}

}
