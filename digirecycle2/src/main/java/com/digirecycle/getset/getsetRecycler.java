package com.digirecycle.getset;

public class getsetRecycler {
	
	public static String contact,name,email;

	public static String getContact() {
		return contact;
	}

	public static String getName() {
		return name;
	}

	public static void setName(String name) {
		getsetRecycler.name = name;
	}

	public static String getEmail() {
		return email;
	}

	public static void setEmail(String email) {
		getsetRecycler.email = email;
	}

	public static void setContact(String contact) {
		getsetRecycler.contact = contact;
	}
	
	

}
