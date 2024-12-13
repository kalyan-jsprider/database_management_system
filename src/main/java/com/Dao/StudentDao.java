package com.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.Dto.Student;

public class StudentDao {
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	private EntityManager em = emf.createEntityManager();
	private EntityTransaction et =  em.getTransaction(); 
	public Student createStudent(Student std) {
		et.begin();
		Student student = em.merge(std);
		et.commit();
		return student;
		
	}  
	public Student findById(int studentId) {
		return em.find(Student.class,studentId);
		
	}
	public void deleteStudent(Student student) {
		et.begin();
		em.remove(student);
		et.commit();
	}

}   