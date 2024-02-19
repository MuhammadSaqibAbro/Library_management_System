package daoimp;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import dao.BookDao;
import model.Book;

public class BookDaoImp implements BookDao{

	@Override
	public boolean addBook(Book book) {
		// TODO Auto-generated method stub
		
		boolean bool=true;
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();

	    // Save or update the course
	    session.save(book);

	    transaction.commit();
	    session.close();
		return bool;
		
	}

	@Override
	public List<Book> getAllBook() {
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	   
	

        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Book";
            Query<Book> query = session.createQuery(hql, Book.class);
            return query.list();
        }

	   
	}

}
