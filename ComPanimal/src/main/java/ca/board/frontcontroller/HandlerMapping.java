package ca.board.frontcontroller;

import java.util.HashMap;

import ca.board.controller.BoardController;
import ca.board.controller.CheckController;
import ca.board.controller.CompanimalController;
import ca.board.controller.Controller;
import ca.board.controller.FindboardController;
import ca.board.controller.MainPageController;
import ca.board.controller.SearchController;
import ca.board.controller.SigninController;
import ca.board.controller.SignupController;

public class HandlerMapping {
	
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();
		mappings.put("/mainpage.do", new MainPageController());
		mappings.put("/companimal.do", new CompanimalController());
		mappings.put("/search.do", new SearchController());
		mappings.put("/check.do", new CheckController());
		mappings.put("/board.do", new BoardController());
		mappings.put("/findboard.do", new FindboardController());
		mappings.put("/signin.do", new SigninController());
		mappings.put("/signup.do", new SignupController());
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
