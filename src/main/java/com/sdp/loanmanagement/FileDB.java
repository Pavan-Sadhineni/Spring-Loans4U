package com.sdp.loanmanagement;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "files")
public class FileDB {
  @Id
  @Column(name="Email")
  private String email;

  @Lob
  private byte[] aadhar;

  @Lob
  private byte[] pancard;
  

  @Lob
  private byte[] income;


  @Lob
  private byte[] address;

  @Lob
  private byte[] occupation;
  @Column(name="status")
  private int status;
  

public int getStatus() {
	return status;
}

public void setStatus(int status) {
	this.status = status;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public byte[] getAadhar() {
	return aadhar;
}

public void setAadhar(byte[] aadhar) {
	this.aadhar = aadhar;
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

public byte[] getOccupation() {
	return occupation;
}

public void setOccupation(byte[] occupation) {
	this.occupation = occupation;
}

@Override
public String toString() {
	return "FileDB [email=" + email + ", aadhar=" + Arrays.toString(aadhar) + ", pancard=" + Arrays.toString(pancard)
			+ ", income=" + Arrays.toString(income) + ", address=" + Arrays.toString(address) + ", occupation="
			+ Arrays.toString(occupation) + ", status=" + status + "]";
}


 

}