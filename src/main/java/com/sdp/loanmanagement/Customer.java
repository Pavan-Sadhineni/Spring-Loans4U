package com.sdp.loanmanagement;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bank_Customer")
public class Customer {
	
	@Column(name="customer_id")
	private String id;
	@Column(name="customer_name")
	private String name;
	@Column(name="customer_gender")
	private String gender;
	@Id
	@Column(name="customer_email")
	private String email;
	@Column(name="customer_mobileno")
	private String mobileno;
	@Column(name="customer_location")
	private String location;
	@Column(name="customer_aadhar")
	private String aadhar;
	@Column(name="customer_panno")
	private String panno;
	@Column(name="annualincome")
	private double annualincome;
	@Column(name="customer_password")
	private String password;
	@Column(name="Account_no")
	private String account_no;
	@Column(name="password")
	private String password1;
	@Column(name="status")
	private int status;
	@Column(name="loginno")
	private int lno;
	@Column(name="lastlogin")
	private String lastlogin;
	public String getAccount_no() {
		return account_no;
	}
	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getLno() {
		return lno;
	}
	public void setLno(int lno) {
		this.lno = lno;
	}
	public String getLastlogin() {
		return lastlogin;
	}
	public void setLastlogin(String lastlogin) {
		this.lastlogin = lastlogin;
	}
	
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getPanno() {
		return panno;
	}
	public void setPanno(String panno) {
		this.panno = panno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public double getAnnualincome() {
		return annualincome;
	}
	public void setAnnualincome(double annualincome) {
		this.annualincome = annualincome;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", gender=" + gender + ", email=" + email + ", mobileno="
				+ mobileno + ", location=" + location + ", aadhar=" + aadhar + ", panno=" + panno + ", annualincome="
				+ annualincome + ", password=" + password + ", account_no=" + account_no + ", password1=" + password1
				+ ", status=" + status + ", lno=" + lno + ", lastlogin=" + lastlogin + "]";
	}
	
	

}
