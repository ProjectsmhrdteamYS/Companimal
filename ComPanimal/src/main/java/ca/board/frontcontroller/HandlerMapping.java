package ca.board.frontcontroller;

import java.util.HashMap;

import ca.board.controller.BoardFormController;
import ca.board.controller.BoardWriteController;
import ca.board.controller.BoardWriteFormController;
import ca.board.controller.CdetailController;
import ca.board.controller.CdetailFormController;
import ca.board.controller.CheckController;
import ca.board.controller.CheckFormController;
import ca.board.controller.CompanimalController;
import ca.board.controller.Controller;
import ca.board.controller.FdetailController;
import ca.board.controller.FdetailFormController;
import ca.board.controller.FindWriteController;
import ca.board.controller.FindWriteFormController;
import ca.board.controller.FindboardFormController;
import ca.board.controller.MainPageController;
import ca.board.controller.SearchController;
import ca.board.controller.SearchFormController;
import ca.board.controller.SigninController;
import ca.board.controller.SigninFormController;
import ca.board.controller.SignupController;
import ca.board.controller.SignupFormController;
import ca.board.controller.logoutController;
import ca.board.controller.logoutFormController;

public class HandlerMapping {
	
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();
		mappings.put("/mainpage.do", new MainPageController());
		mappings.put("/companimal.do", new CompanimalController());
		mappings.put("/searchform.do", new SearchFormController());
		mappings.put("/search.do", new SearchController());
		mappings.put("/checkform.do", new CheckFormController());
		mappings.put("/check.do", new CheckController());
		mappings.put("/boardform.do", new BoardFormController());
		mappings.put("/boardwriteform.do", new BoardWriteFormController());
		mappings.put("/boardwrite.do", new BoardWriteController());
		mappings.put("/cdetailform.do", new CdetailFormController());
		mappings.put("/cdetail.do", new CdetailController());
		mappings.put("/findboardform.do", new FindboardFormController());
		mappings.put("/findwriteform.do", new FindWriteFormController());
		mappings.put("/findwrite.do", new FindWriteController());
		mappings.put("/fdetailform.do", new FdetailFormController());
		mappings.put("/fdetail.do", new FdetailController());
		mappings.put("/signinform.do", new SigninFormController());
		mappings.put("/signin.do", new SigninController());
		mappings.put("/signupform.do", new SignupFormController());
		mappings.put("/signup.do", new SignupController());
		mappings.put("/logout.do", new logoutController());
		mappings.put("/logoutform.do", new logoutFormController());
		
		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
