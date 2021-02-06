package com.zooworld.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {	
		@GetMapping("/home")
		public String homePage() {
			System.out.println("hello there");
			return"home.jsp";
		}
		
		
		
	}
