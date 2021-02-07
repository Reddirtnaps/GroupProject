package com.zooworld.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.zooworld.Models.Exhibit;

@Repository
public interface ExhibitRepository extends CrudRepository<Exhibit, Long>{

	
	List<Exhibit> findAll();

}
