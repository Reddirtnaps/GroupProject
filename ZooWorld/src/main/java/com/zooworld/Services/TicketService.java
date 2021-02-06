package com.zooworld.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zooworld.Models.Ticket;
import com.zooworld.Repositories.TicketRepository;

@Service
public class TicketService {
	@Autowired
		private TicketRepository tRepo;
	
	public Ticket createTicket(Ticket ticket) {
		return this.tRepo.save(ticket);
	}

}
