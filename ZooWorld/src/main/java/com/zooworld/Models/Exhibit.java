package com.zooworld.Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="exhibits")
public class Exhibit {

	//MEMBER VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String animals;
	private String description;
	private String zooKeeper;

	
	//RELATIONSHIPS?? I don't remember
	
	
	//CONTSTRUCTOR + GETTERS & SETTERS
	public Exhibit() {
		
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getAnimals() {
		return animals;
	}



	public void setAnimals(String animals) {
		this.animals = animals;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public String getZooKeeper() {
		return zooKeeper;
	}



	public void setZooKeeper(String zooKeeper) {
		this.zooKeeper = zooKeeper;
	}
	
	
	
	
}
