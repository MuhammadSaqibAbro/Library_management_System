package daoimp;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import dao.AdminDao;

import model.Admin;
import model.Book;

public class  AdminDaoImp implements AdminDao{

	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();

	    // Save or update the course
	    session.save(admin);

	    transaction.commit();
	    session.close();
		
	}

	@Override
	public List<Admin> getAllAdmin() {
		// TODO Auto-generated method stub
		 Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
		    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
		   
		

	        try (Session session = sessionFactory.openSession()) {
	            String hql = "FROM Admin";
	            Query<Admin> query = session.createQuery(hql, Admin.class);
	            return query.list();
	        }
	}

	



	   
	}


