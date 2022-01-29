package com.sdp.loanmanagement;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Loan_Data")
public class LoanData {
	@Id
	@Column(name="Loan_id")
	private int loanid;
	@Column(name="loan_type")
	private String type;
	@Column(name="rate_intrest")
	private double rate;
	@Column(name="loan_duration")
	private int duration;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getLoanid() {
		return loanid;
	}
	public void setLoanid(int loanid) {
		this.loanid = loanid;
	}
	@Override
	public String toString() {
		return "LoanData [loanid=" + loanid + ", type=" + type + ", rate=" + rate + ", duration=" + duration + "]";
	}
	
    
}
