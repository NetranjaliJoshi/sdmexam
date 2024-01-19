package com.app.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.app.Book;

public class Bookdao implements Serializable{
	
	public static int addBookIntoTable(Book e )
	{
		SessionFactory factory = new Configuration().configure("hiberante.cfg.xml")
				.addAnnotatedClass(Book.class).buildSessionFactory(); 
		
		Session session = factory.openSession();
		session.beginTransaction();
		int i = (int) session.save(e);
		session.getTransaction().commit();
		factory.close();
		
		return i;
		
	}
	public static List<Book> getAllBooks()
	{
		SessionFactory factory = new Configuration().configure("hiberante.cfg.xml")
				.addAnnotatedClass(Book.class).buildSessionFactory(); 
		
		Session session = factory.openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Book> list = session.createQuery("from Book").getResultList();
		
		session.getTransaction().commit();
		factory.close();
		
		return list;
		
	}
	public static void updateBooks(Book b)
	{
		
		SessionFactory factory = new Configuration().configure("hiberante.cfg.xml")
				.addAnnotatedClass(Book.class).buildSessionFactory(); 
		
		Session session = factory.openSession();
		session.beginTransaction();
		
		Book book = session.load(Book.class, b.getId());
		
		book.setBookName(b.getBookName());
		book.setAuthor(b.getAuthor());
		book.setPrice(b.getPrice());
		book.setTitle(b.getTitle());
		
		session.update(book);
		session.getTransaction().commit();
		session.close();
		
		
	}
	
	public static void deleteBook(Book b)
	{
		SessionFactory factory = new Configuration().configure("hiberante.cfg.xml")
				.addAnnotatedClass(Book.class).buildSessionFactory(); 
		
		Session session = factory.openSession();
		session.beginTransaction();
		
		session.delete(b);
		session.getTransaction().commit();
		session.close();
		
		
	}

}
