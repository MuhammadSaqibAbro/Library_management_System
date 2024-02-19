package model;










import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Studentl")

public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int studentId;
    private String studentName;
    private String rollNo;
 
	private String bookissue;
    private String city;
    private String book;
    private String department;
    
    public String getRollNo() {
 		return rollNo;
 	}
 	public void setRollNo(String rollNo) {
 		this.rollNo = rollNo;
 	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getBookissue() {
		return bookissue;
	}
	public void setBookissue(String bookissue) {
		this.bookissue = bookissue;
	}
	
    


    // Constructors, getters, and setters

    // ...

}

