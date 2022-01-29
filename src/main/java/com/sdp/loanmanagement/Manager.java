package com.sdp.loanmanagement;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Loan_manager")
public class Manager {
	@Id
	@Column(name="manager_id")
	private String id;
	@Column(name="manager_name")
	private String name;
	@Column(name="manager_mobileno")
	private String mobileno;
	@Column(name="manager_location")
	private String location;
	@Column(name="manager_email")
	private String email;
	@Column(name="manager_password")
	private String password;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Manager [id=" + id + ", name=" + name + ", mobileno=" + mobileno + ", location=" + location + ", email="
				+ email + ", password=" + password + "]";
	}

}
