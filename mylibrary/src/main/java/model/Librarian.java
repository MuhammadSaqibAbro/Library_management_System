package model;








import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Librarianl")

public class Librarian {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)



	private String librarianEmail;
    private String librarianPassowrd;


	public String getLibrarianEmail() {
		return librarianEmail;
	}
	public void setLibrarianEmail(String librarianEmail) {
		this.librarianEmail = librarianEmail;
	}
	public String getLibrarianPassowrd() {
		return librarianPassowrd;
	}
	public void setLibrarianPassowrd(String librarianPassowrd) {
		this.librarianPassowrd = librarianPassowrd;
	}

    
	

    


    // Constructors, getters, and setters

    // ...

}
