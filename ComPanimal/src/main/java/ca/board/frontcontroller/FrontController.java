package ca.board.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.board.controller.Controller;

@WebServlet("*.do")
public class FrontController extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		
		String nextpath = null;
		RequestDispatcher rd = null;
		request.setCharacterEncoding("utf-8");
		Controller controller = null;
		
		String reqPath = request.getRequestURI();
		String cpath = request.getContextPath();
		String command = reqPath.substring(cpath.length());
		
		HandlerMapping mappings = new HandlerMapping();
		controller = mappings.getController(command);
		nextpath = controller.requestHandler(request, response);
		
		if(nextpath!=null) {
			if(nextpath.indexOf("redirect:")==-1) {
				//forward
				rd= request.getRequestDispatcher(ViewResolver.makeView(nextpath)); // static에 ViewResolver를 만들었기 때문에 바로 class명+메소드 호출 가능
				rd.forward(request, response);
			}else {
				response.sendRedirect(cpath+nextpath.split(":")[1]);
			}
		}
	}
}
