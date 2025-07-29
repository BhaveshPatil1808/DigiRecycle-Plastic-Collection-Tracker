package com.digirecycle.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.digirecycle.model.recycler;

public class recyclerdao {
	
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate h) {
		this.hibernateTemplate = h;
	}
	@Transactional
	public void saveRecycler(recycler r) {
		hibernateTemplate.save(r);
	}
	
	
	public List<recycler> getAll(){
		List<recycler> all =  this.hibernateTemplate.loadAll(recycler.class);
		return all;
	}
	
	@Transactional
	public recycler getRecyclerByEmailAndPassword(String email, String password) {
	    List<recycler> list = hibernateTemplate.loadAll(recycler.class);
	    for (recycler r : list) {
	        if (r.getEmail().equals(email) && r.getPassword().equals(password)) {
	            return r;
	        }
	    }
	    return null;
	}


}
