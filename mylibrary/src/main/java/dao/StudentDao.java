package dao;

import java.util.List;


import model.Student;

public interface  StudentDao {
	boolean addStudent(Student student);
	List<Student> getAllStudents();
}
