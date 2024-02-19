package dao;

import java.util.List;


import model.Librarian;



public interface LibrarianDao {
	void addLibrarian(Librarian librarian);
	List<Librarian> getAllLibrarian();
	
}
