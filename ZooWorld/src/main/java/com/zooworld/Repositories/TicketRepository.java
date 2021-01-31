package com.zooworld.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.zooworld.Models.Ticket;

@Repository
public interface TicketRepository extends CrudRepository<Ticket,Long>{
	List<Ticket> findAll();

}
