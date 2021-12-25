package com.myclass.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "loginaccount")
public class Account {
	
	@Id
	private long id;
	private String username;
	private String password;
	private int accounttype;
	
	@OneToOne
	@JoinColumn(name = "id")
	private Admin admin;
	
	@OneToOne
	@JoinColumn(name = "id")
	private User user;
	
	public Account() {
		super();
	}

	public Account(long id, String username, String password, int accounttype, Admin admin, User user) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.accounttype = accounttype;
		this.admin = admin;
		this.user = user;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAccounttype() {
		return accounttype;
	}

	public void setAccounttype(int accounttype) {
		this.accounttype = accounttype;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	
	
	
}
