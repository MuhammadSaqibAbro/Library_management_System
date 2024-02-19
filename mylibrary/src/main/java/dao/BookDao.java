package dao;

import java.util.List;

import model.Book;



public interface BookDao {
	public boolean addBook(Book book);
	List<Book> getAllBook();
}
