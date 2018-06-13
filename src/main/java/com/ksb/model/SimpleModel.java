package com.ksb.model;

public class SimpleModel {
	public SimpleModel() {
		// TODO Auto-generated constructor stub
	}
	String user = "kiran";
	String pass = "kiran1234";
	public boolean checkUser(String user1, String pass1) {
		if (user1.equals(user) && pass1.equals(pass)) {
			return true;
		} else {
			return false;
		}
	}
}
