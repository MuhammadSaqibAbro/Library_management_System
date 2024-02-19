package dao;

import java.util.List;

import model.Department;
import model.Student;

public interface DepartmentDao {
	boolean addDepartment(Department department);
	List<Department> getAllDepartment();
}
