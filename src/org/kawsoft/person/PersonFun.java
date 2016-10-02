package org.kawsoft.person;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class PersonFun {

	private static SessionFactory sessoinFactory = new Configuration().configure().buildSessionFactory();
	
	public static void addPerson(Person person) {
		Session session = sessoinFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			
			session.save(person);
			
			t.commit();
		}
		catch(HibernateException e) {
			if(t != null){
				t.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	public static void addStaff(Staff staff) {
		Session session = sessoinFactory.openSession();
		Transaction t = null;
		try {
			t = session.beginTransaction();
			
			session.persist(staff);
			
			t.commit();
			
		} catch(HibernateException e) {
			if(t != null) {
				t.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	public static void addPatient(Patient patient) {
		Session session = sessoinFactory.openSession();
		Transaction t = null;
		try {
			t = session.beginTransaction();
			
			session.persist(patient);
			
			t.commit();
		} catch(HibernateException e) {
			if(t != null) {
				t.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}
