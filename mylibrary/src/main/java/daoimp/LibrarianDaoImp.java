package daoimp;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import dao.AdminDao;
import dao.LibrarianDao;
import model.Admin;
import model.Book;
import model.Librarian;

public class  LibrarianDaoImp implements LibrarianDao{

	@Override
	public void addLibrarian(Librarian librarian) {
		// TODO Auto-generated method stub
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();

	    // Save or update the course
	    session.save(librarian);

	    transaction.commit();
	    session.close();
		
	}

	@Override
	public List<Librarian> getAllLibrarian() {
		// TODO Auto-generated method stub
		 Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
		    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
		   
		

	        try (Session session = sessionFactory.openSession()) {
	            String hql = "FROM Librarian";
	            Query<Librarian> query = session.createQuery(hql, Librarian.class);
	            return query.list();
	        }
	}





	



	   
	}


