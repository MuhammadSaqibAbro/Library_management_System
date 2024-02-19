package dao;

import java.util.List;

import model.BookIssue;



public interface BookIssueDao {
	boolean addBookIssue(BookIssue bookIssue);
	List<BookIssue> getAllBookIssue();
	 public boolean deleteEntityByStudentAndBookId(int studentId, int bookId);
	 }
