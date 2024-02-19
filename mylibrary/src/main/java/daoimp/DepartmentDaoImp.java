package daoimp;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import dao.DepartmentDao;
import dao.StudentDao;
import model.Book;
import model.Department;
import model.Student;

public class DepartmentDaoImp implements DepartmentDao{

	@Override
	public boolean addDepartment(Department department) {
		boolean bool=true;
	    Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();

	    // Save or update the course
	    session.save(department);

	    transaction.commit();
	    session.close();
		return bool;
		
	}

	@Override
	public List<Department> getAllDepartment() {
		Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	    SessionFactory sessionFactory = configuration.buildSessionFactory(); 
	   
	

        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Department";
            Query<Department> query = session.createQuery(hql, Department.class);
            return query.list();
        }
	}



}
