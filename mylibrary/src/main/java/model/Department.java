package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


	@Entity
	@Table(name = "Departmentl")

	public class Department {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int DepartmentId;
	    private String departmentName;
		public int getDepartmentId() {
			return DepartmentId;
		}
		public void setDepartmentId(int departmentId) {
			DepartmentId = departmentId;
		}
		public String getDepartmentName() {
			return departmentName;
		}
		public void setDepartmentName(String departmentName) {
			this.departmentName = departmentName;
		}
	    
}
