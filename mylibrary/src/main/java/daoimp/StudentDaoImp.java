package daoimp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import dao.StudentDao;
import model.Book;
import model.Student;

public class StudentDaoImp implements StudentDao{

	@Override
	public boolean addStudent(Student student) {
		boolean bool=true;
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();

	    // Save or update the course
	    session.save(student);

	    transaction.commit();
	    session.close();
		return bool;
	}

	@Override
	public List<Student> getAllStudents() {
		Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	   
	

        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Student";
            Query<Student> query = session.createQuery(hql, Student.class);
            return query.list();
        }
	}

}
