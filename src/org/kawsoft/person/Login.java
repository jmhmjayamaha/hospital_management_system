package org.kawsoft.person;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.kawsoft.other.Comment;

public class Login {
	
	//private static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	private static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
//	public static List listLogin() {
//		List<User> list = new ArrayList<User>();
//		Session session = sessionFactory.openSession();
//		Transaction t = null;
//		
//		try {
//			t = session.beginTransaction();
//			
//			list = session.createQuery("from User").list();
//			
//			t.commit();
//		}
//		catch(HibernateException e) {
//			if(t != null) {
//				t.rollback();
//			}
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//		return list;
//	}
	
	public static List listLogin() {
		List<User> list = new ArrayList<User>();
		Session session = sessionFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			t.begin();
			list = session.createQuery("from User").list();
			
			t.commit();
		} catch(HibernateException e) {
			if(t != null) {
				t.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	
}
