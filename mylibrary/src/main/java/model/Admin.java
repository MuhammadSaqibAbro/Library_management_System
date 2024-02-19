package model;








import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Adminl")

public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int adminid;
    public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPassowrd() {
		return adminPassowrd;
	}
	public void setAdminPassowrd(String adminPassowrd) {
		this.adminPassowrd = adminPassowrd;
	}
	private String adminEmail;
    private String adminPassowrd;
	

    


    // Constructors, getters, and setters

    // ...

}
