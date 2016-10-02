package org.kawsoft.other;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class CommentFun {

	private static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	public static void addComment(Comment c) {
		Session session = sessionFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			
			session.save(c);
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
	
	public static List listComment() {
		List<Comment> list = new ArrayList<Comment>();
		Session session = sessionFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			
			list = session.createQuery("from Comment order by id desc").list();
			
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
