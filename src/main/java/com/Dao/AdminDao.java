package com.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.Dto.Admin;


public class AdminDao {
	
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	private EntityManager em = emf.createEntityManager();
	private EntityTransaction et =  em.getTransaction();

	public Admin saveAdmin(Admin adm) {
		et.begin();
		Admin admin = em.merge(adm);
		et.commit();
		return admin;
		
	}

	public Admin findByEmail(String email) {
		
		// custom query
				Query q = em.createQuery("select a from Admin a where email=?1");

				q.setParameter(1, email);

				List<Admin> list = q.getResultList();
				if (!list.isEmpty())
					return list.get(0);

				return null;
	}

	public Admin findByEId(int id) {
		return em.find(Admin.class, id);
		
	}

	
   
}