package com.sdp.loanmanagement;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bank_Loan")
public class Loan {
	@Id
	@Column(name="account_no")
	private String account_no;
	@Column(name="customer_id")
	private String customer_id;
	@Column(name="loan_type")
	private String type;
	@Column(name="issuedamount")
	private double issuedamount;
	@Column(name="issued_date")
	private String date;
	@Column(name="balance")
	private double balance;
	@Column(name="loan_status")
	private String status;
	@Column(name="loan_duration")
	private String duration;
	public String getAccount_no() {
		return account_no;
	}
	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getIssuedamount() {
		return issuedamount;
	}
	public void setIssuedamount(double issuedamount) {
		this.issuedamount = issuedamount;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	

}
