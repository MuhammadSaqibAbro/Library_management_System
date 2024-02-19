package daoimp;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaDelete;
import javax.persistence.criteria.Root;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import dao.BookIssueDao;
import model.BookIssue;

public class BookIssueDaoImp implements BookIssueDao{

	@Override
	public boolean addBookIssue(BookIssue bookIssue) {
		// TODO Auto-generated method stub
		boolean bool=true;
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();

	    // Save or update the course
	    session.save(bookIssue);

	    transaction.commit();
	    session.close();
		return bool;
		
	}

	@Override
	public List<BookIssue> getAllBookIssue() {
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	   
	

        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM BookIssue";
            Query<BookIssue> query = session.createQuery(hql, BookIssue.class);
            return query.list();
        }

	   
	}
	
	private static final SessionFactory sessionFactory;

    static {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public boolean deleteEntityByStudentAndBookId(int studentId, int bookId) {
    	boolean bool = false;
        try (Session session = sessionFactory.openSession()) {
            org.hibernate.Transaction transaction = session.beginTransaction();

            Query query = session.createQuery("DELETE FROM BookIssue WHERE studentId = :studentId AND bookId = :bookId");
            query.setParameter("studentId", studentId);
            query.setParameter("bookId", bookId);

            int deletedCount = query.executeUpdate();

            transaction.commit();

            if (deletedCount > 0) {
                System.out.println("Row deleted successfully.");
                bool = true;
     
                
            } else {
                System.out.println("Row not found in the database.");
                bool = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return bool;
    }

}
