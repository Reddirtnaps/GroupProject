package com.haftamu.haftamu_groupProject.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class userontroller {

	
	
	
	@GetMapping("/home")
	public String homePage() {
		return"home.jsp";
	}
	
	@GetMapping("/feedback")
	public String feedBack() {

		return "feedback.jsp";
}
	@PostMapping("/feedback")
	public String feedBackCustomer() {

		
		return "redirect:/feedback";
}
	
}
