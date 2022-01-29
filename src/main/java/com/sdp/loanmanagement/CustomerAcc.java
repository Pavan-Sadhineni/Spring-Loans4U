package com.sdp.loanmanagement;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customeraccount")
public class CustomerAcc {
	
	@Id
	@Column(name="email")
	private String email;
	@Column(name="Account_no")
	private String account_no;
	@Column(name="password")
	private String password;
	@Column(name="status")
	private int status;
	@Column(name="loginno")
	private int lno;
	@Column(name="lastlogin")
	private String lastlogin;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAccount_no() {
		return account_no;
	}
	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "CustomerAcc [email=" + email + ", account_no=" + account_no + ", password=" + password + ", status="
				+ status + ", lno=" + lno + ", lastlogin=" + lastlogin + "]";
	}
	
	
	

}
