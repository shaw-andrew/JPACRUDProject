package com.skilldistillery.dogparks.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.dogparks.entities.DogPark;

@Service
@Transactional
public class DogParkDAOImpl implements DogParkDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<DogPark> findAll() {
		String jpql="SELECT dp FROM DogPark dp";
		return em.createQuery(jpql, DogPark.class).getResultList();
	}

	@Override
	public DogPark findById(int dogParkId) {
		return em.find(DogPark.class, dogParkId);
	}

	@Override
	public DogPark create(DogPark newPark) {
		em.persist(newPark);
		em.flush();
		return newPark;
	}

	@Override
	public DogPark update(int dogParkId, DogPark dogPark) {
		DogPark dp = em.find(DogPark.class, dogParkId);
		if(dp != null) {
			dp.setName(dogPark.getName());
			dp.setStreetAddress(dogPark.getStreetAddress());
			dp.setCity(dogPark.getCity());;
			dp.setPostalCode(dogPark.getPostalCode());
			dp.setRating(dogPark.getRating());
		}
		return dp;
	}

	@Override
	public boolean deleteById(int dogParkId) {
		DogPark dp = em.find(DogPark.class, (dogParkId));
		em.remove(dp);
		boolean successfullyRemoved = !em.contains(dp);
		return successfullyRemoved;
	}

}
