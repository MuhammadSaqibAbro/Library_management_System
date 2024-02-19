package model;








import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BookIssuel")

public class BookIssue {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bookIssueid;
    private int BookId;
    private int StudentId;
    private String issueDate;
    private String dueDate;
	public int getBookIssueid() {
		return bookIssueid;
	}
	public void setBookIssueid(int bookIssueid) {
		this.bookIssueid = bookIssueid;
	}
	public int getBookId() {
		return BookId;
	}
	public void setBookId(int bookId) {
		BookId = bookId;
	}
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
    
    
	

}
