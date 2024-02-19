package model;








import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ReturnIIsueBookl")

public class ReturnIIsueBook {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int returnBookId;
    private int bookId;
    private int studentId;
    private String returnDate;
	public int getReturnBookId() {
		return returnBookId;
	}
	public void setReturnBookId(int returnBookId) {
		this.returnBookId = returnBookId;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
	
    
    
    
    
    
}



