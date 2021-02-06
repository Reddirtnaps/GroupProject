package com.zooworld.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.zooworld.Models.Ticket;
import com.zooworld.Services.TicketService;

@Controller
public class TicketController {
	@Autowired
		private TicketService tService;
	
	@GetMapping("/buyticket")
		public String ticket() {
			return "ticket.jsp";
	}
	@GetMapping("/confirm")
		public String confirm() {
			return "confirm.jsp";
		}

}
