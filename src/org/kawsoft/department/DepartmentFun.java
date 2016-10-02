package org.kawsoft.department;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class DepartmentFun {

	private static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	public static void addDepartment(Department1 dept) {
		Session session = sessionFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			
			session.save(dept);
			
			t.commit();
		} catch(HibernateException e) {
			if(t != null) {
				t.rollback();
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	}
	
	public static List listDepartment() {
		Session session = sessionFactory.openSession();
		Transaction t = null;
		List<Department1> list = new ArrayList<Department1>();
		try {
			t = session.beginTransaction();
			
			list = session.createQuery("from Department1").list();
			
			t.commit();
		}
		catch(HibernateException e) {
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
