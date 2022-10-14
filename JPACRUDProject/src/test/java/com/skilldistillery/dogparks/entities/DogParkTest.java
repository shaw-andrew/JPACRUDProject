package com.skilldistillery.dogparks.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class DogParkTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private DogPark dp;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACRUDProject");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		dp = em.find(DogPark.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		dp = null;
	}

	@Test
	void tes_DogPark_entity_mapping() {
		assertNotNull(dp);
		assertEquals("Barnum Dog Park", dp.getName());
	}

}
