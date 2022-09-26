package ca.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.dao.ProjectDAO;
import ca.board.dao.userVO;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글설정
		request.setCharacterEncoding("UTF-8");
		
		// 회원가입의 데이터베이스와 연동시키는 기능
		ProjectDAO dao = new ProjectDAO();
		
		//
//		Date now = new Date();
		// 회원가입 기능
		String user_id  = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		int user_birth = Integer.parseInt(request.getParameter("user_birth"));
		String user_tel = request.getParameter("user_tel");
		String user_addr = request.getParameter("user_addr");
//		Date user_joindate = request.getParameter("user_joindate"); 이거는 안해도 상관없음
		String user_type = request.getParameter("user_type"); // 개인정보 동의
		userVO vo = new userVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		vo.setUser_name(user_name);
		vo.setUser_birth(user_birth);
		vo.setUser_tel(user_tel);
		vo.setUser_addr(user_addr);
//		vo.setUser_joindate(user_joindate);
		vo.setUser_type(user_type);
		// 여기서  데이터베이스 연동을 성공한후에 회원가입 성공시 알람을 떴어야함
		// 제대로 작동되었는지 확인
//		System.out.println(vo.getUser_joindate()); // null 확인 이거는 없이 사용가능함
		System.out.println(vo.getUser_id()); // null 확인 이후에 jsp페이지에 들어갈 값 완료
		System.out.println(vo.getUser_pw());
		System.out.println(vo.getUser_name());
		System.out.println(vo.getUser_addr());
		System.out.println(vo.getUser_tel());
		System.out.println(vo.getUser_birth());
		System.out.println(vo.getUser_type());
		System.out.println(vo.getUser_joindate());
//		
		//이부분이 문제라고볼수있음(만약 컨텍스트 패스 뭐라고 나오면은 무조건 BoardMapper.xml 문제라고 볼수있음)
		dao.signupMethod(vo);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('회원가입완료되었습니다.');"
				+ "location.href='signinform.do';</script>");
		writer.flush();
	
//		return "redirect:/signinform.do";
		return null;
	}

}
