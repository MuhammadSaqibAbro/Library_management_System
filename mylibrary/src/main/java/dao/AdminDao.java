package dao;

import java.util.List;

import model.Admin;
import model.Book;



public interface AdminDao {
	void addAdmin(Admin admin);
	List<Admin> getAllAdmin();
}
