package org.kawsoft.hospital;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.kawsoft.department.Department1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HospitalFun {
	private static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	private static boolean exception = false;
	
	public static boolean isException() {
		return exception;
	}

	public static void setException(boolean exception) {
		HospitalFun.exception = exception;
	}

	public static int addHospital(Hospital1 hospital) {
		int i = 0;

		Session session = sessionFactory.openSession();

		Transaction t = session.beginTransaction();
		t.begin();

		session.save(hospital);

		t.commit();
		session.close();

		return i;
	}
	
	public static void updateHospital(Hospital1 hospital) {
		Session session = sessionFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			t.begin();
			
			session.update(hospital);
			
			t.commit();
		}
		catch(HibernateException e) {
			if(t != null) {
				t.rollback();
			}
			e.printStackTrace();
			setException(true);
		}
		finally {
			session.close();
		}
	}
	
	public static List listHospital() {
		List<Hospital1> list = new ArrayList<Hospital1>();
		Session session = sessionFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			t.begin();
			
			list = session.createQuery("from Hospital1").list();
			
			t.commit();
		} catch(HibernateException e) {
			if(t != null) {
				t.rollback();
			}
			e.printStackTrace();
			setException(true);
		} finally {
			session.close();
		}
		return list;
	}
	
	public static List hospitalDetails(String id) {
		Session session = sessionFactory.openSession();
		Transaction t = null;
		String sql = null;
		List<Department1> list = new ArrayList<Department1>();
		try {
			t = session.beginTransaction();
			sql = "select * from department where HOSPITAL_ID ='"+id+"'";
			SQLQuery query = session.createSQLQuery(sql);
			query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
			list = query.list();
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
