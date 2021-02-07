package com.zooworld.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zooworld.Models.Exhibit;
import com.zooworld.Repositories.ExhibitRepository;

@Service
public class ExhibitService {

	@Autowired
	private ExhibitRepository eRepo;
	
	//Get all exhibits
	public List<Exhibit> getAllExhibits(){
		return this.eRepo.findAll();
	}
	
	//Get one exhibits
	public Exhibit getById(Long id) {
		return this.eRepo.findById(id).orElse(null);
	}
	
	//Create new exhibits
	public Exhibit create(Exhibit exhibit) {
		return this.eRepo.save(exhibit);
	}
	
	//Edit exhibits
	public Exhibit updateTask(Exhibit exhibit) {
		return this.eRepo.save(exhibit);
	}
	
	//Delete exhibits
	public void delete(Long id) {
		this.eRepo.deleteById(id);
	}
	
	
}
