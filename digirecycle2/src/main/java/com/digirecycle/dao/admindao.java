package com.digirecycle.dao;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.digirecycle.model.recycler;

public class admindao {
	
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate h) {
		this.hibernateTemplate = h;
	}

	

}
