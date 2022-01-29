package com.sdp.loanmanagement;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer_transactions")
public class Customer_Transactions {
	
	@Id
	@Column(name="loan_id")
	private String loanid;
	@Column(name="customer_id")
	private String customerid;
	@Column(name="date_of_transaction")
	private String date;
	@Column(name="from_account")
	private String from;
	@Column(name="to_account")
	private String to;
	@Column(name="amount_transfered")
	private String amount;
	@Column(name="transaction_status")
	private String status;
	public String getLoanid() {
		return loanid;
	}
	public void setLoanid(String loanid) {
		this.loanid = loanid;
	}
	public String getCustomerid() {
		return customerid;
	}
	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
