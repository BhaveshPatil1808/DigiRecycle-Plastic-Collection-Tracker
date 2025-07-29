package com.digirecycle.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.digirecycle.model.user;

public class userdao {

	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate h) {
		this.hibernateTemplate = h;
	}

	@Transactional
	public void insert(user u) {

		this.hibernateTemplate.save(u);

	}
	public List<user> getAll() {
	    return (List<user>) this.hibernateTemplate.loadAll(user.class);
	}
	
	public user getUserByContact(String contact) {
	    return hibernateTemplate.get(user.class, contact);
	}


}
