package com.skilldistillery.dogparks.data;

import java.util.List;

import com.skilldistillery.dogparks.entities.DogPark;

public interface DogParkDAO {

	List<DogPark> findAll();
	
	DogPark findById(int dogParkId);
	
	DogPark create(DogPark newPark);
	
	DogPark update(int dogParkId, DogPark dogPark);
	
	boolean deleteById(int dogParkId);
	
}
