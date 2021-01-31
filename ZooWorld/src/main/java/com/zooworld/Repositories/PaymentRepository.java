package com.zooworld.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.zooworld.Models.Payment;

@Repository
public interface PaymentRepository extends CrudRepository<Payment,Long> {
	List<Payment> findAll();
}
