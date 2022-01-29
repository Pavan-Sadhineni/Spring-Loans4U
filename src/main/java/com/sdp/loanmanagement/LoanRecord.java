package com.sdp.loanmanagement;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="LoanRecord")
public class LoanRecord {
	@Id
	@Column(name="loannoid")
	private int loannoid;
	@Column(name="account_no")
	private String accno;
	@Column(name="Name")
	private String name;
	@Column(name="email")
	private String email;
	@Column(name="mobile_no")
	private String mobile;
	@Column(name="location")
	private String location;
	@Column(name="current_location")
	private String clocation;
	@Column(name="annual_income")
	private double annincome;
	@Column(name="panno")
	private String panno;
	@Column(name="aadhar")
	private String aadhar;
	@Column(name="occupation")
	private String occupation;
	@Column(name="loan_id")
	private int loanid;
	@Column(name="loanType")
	private String loantype;
	@Column(name="rate_of_intrest")
	private double rate;
	@Column(name="issued_date")
	private String idate;
	@Column(name="loan_duration")
	private String duration;
	@Column(name="amount_issued")
	private double amountissued;
	@Column(name="duedate")
	private String duedate;
	@Column(name="request_status")
	private int vstatus;
	@Column(name="loan_status")
	private int lstatus;
	@Column(name="application_date")
	private String adate;
	  @Lob
	  private byte[] aadharc;

	  @Lob
	  private byte[] pancard;
	  

	  @Lob
	  private byte[] income;


	  @Lob
	  private byte[] address;

	  @Lob
	  private byte[] occupationc;
	  @Lob
	  private byte[] others;
	public int getLoannoid() {
		return loannoid;
	}
	public void setLoannoid(int loannoid) {
		this.loannoid = loannoid;
	}
	public String getAccno() {
		return accno;
	}
	public void setAccno(String accno) {
		this.accno = accno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getClocation() {
		return clocation;
	}
	public void setClocation(String clocation) {
		this.clocation = clocation;
	}
	public double getAnnincome() {
		return annincome;
	}
	public void setAnnincome(double annincome) {
		this.annincome = annincome;
	}
	public String getPanno() {
		return panno;
	}
	public void setPanno(String panno) {
		this.panno = panno;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public int getLoanid() {
		return loanid;
	}
	public void setLoanid(int loanid) {
		this.loanid = loanid;
	}
	public String getLoantype() {
		return loantype;
	}
	public void setLoantype(String loantype) {
		this.loantype = loantype;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public String getIdate() {
		return idate;
	}
	public void setIdate(String idate) {
		this.idate = idate;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public double getAmountissued() {
		return amountissued;
	}
	public void setAmountissued(double amountissued) {
		this.amountissued = amountissued;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public int getVstatus() {
		return vstatus;
	}
	public void setVstatus(int vstatus) {
		this.vstatus = vstatus;
	}
	public int getLstatus() {
		return lstatus;
	}
	public void setLstatus(int lstatus) {
		this.lstatus = lstatus;
	}
	public byte[] getAadharc() {
		return aadharc;
	}
	public void setAadharc(byte[] aadharc) {
		this.aadharc = aadharc;
	}
	public byte[] getPancard() {
		return pancard;
	}
	public void setPancard(byte[] pancard) {
		this.pancard = pancard;
	}
	public byte[] getIncome() {
		return income;
	}
	public void setIncome(byte[] income) {
		this.income = income;
	}
	public byte[] getAddress() {
		return address;
	}
	public void setAddress(byte[] address) {
		this.address = address;
	}
	public byte[] getOccupationc() {
		return occupationc;
	}
	public void setOccupationc(byte[] occupationc) {
		this.occupationc = occupationc;
	}
	public byte[] getOthers() {
		return others;
	}
	public void setOthers(byte[] others) {
		this.others = others;
	}
	
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}
	@Override
	public String toString() {
		return "LoanRecord [loannoid=" + loannoid + ", accno=" + accno + ", name=" + name + ", email=" + email
				+ ", mobile=" + mobile + ", location=" + location + ", clocation=" + clocation + ", annincome="
				+ annincome + ", panno=" + panno + ", aadhar=" + aadhar + ", occupation=" + occupation + ", loanid="
				+ loanid + ", loantype=" + loantype + ", rate=" + rate + ", idate=" + idate + ", duration=" + duration
				+ ", amountissued=" + amountissued + ", duedate=" + duedate + ", vstatus=" + vstatus + ", lstatus="
				+ lstatus + ", adate=" + adate + ", aadharc=" + Arrays.toString(aadharc) + ", pancard="
				+ Arrays.toString(pancard) + ", income=" + Arrays.toString(income) + ", address="
				+ Arrays.toString(address) + ", occupationc=" + Arrays.toString(occupationc) + ", others="
				+ Arrays.toString(others) + "]";
	}
	
	  

	

}
