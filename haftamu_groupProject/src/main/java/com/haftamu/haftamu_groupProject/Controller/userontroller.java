package com.haftamu.haftamu_groupProject.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class userontroller {

	
	
	
	@GetMapping("/home")
	public String homePage() {
		return"home.jsp";
	}
	
	
	
}
