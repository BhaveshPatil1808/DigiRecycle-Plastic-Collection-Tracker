package com.digirecycle.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.digirecycle.model.collectionLogs;

public class collectionLogDao {
	
	
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
//	@Transactional
//	public List<collectionLogs> getByRecyclerContact(String contact) {
//	    List<collectionLogs> allLogs = (List<collectionLogs>) hibernateTemplate.loadAll(collectionLogs.class);
//	    
//	    List<collectionLogs> result = new ArrayList<collectionLogs>();
//	    for (collectionLogs log : allLogs) {
//	        if (log.getRecyclerContactId().equals(contact)) {
//	            result.add(log);
//	        }
//	    }
//	    return result;
//	}
	
	@Transactional
	public List<collectionLogs> getByUserEmail(String email) {
	    List<collectionLogs> allLogs = hibernateTemplate.loadAll(collectionLogs.class);
	    
	    List<collectionLogs> userLogs = new ArrayList<collectionLogs>();
	    for (collectionLogs log : allLogs) {
	        if (email.equals(log.getUserContactId())) {
	            userLogs.add(log);
	        }
	    }

	    return userLogs;
	}

	@Transactional
	public  void insert(collectionLogs log) {
		// TODO Auto-generated method stub
		
		this.hibernateTemplate.save(log);		
	}
	
	public List<collectionLogs> getAll() {
	    return (List<collectionLogs>) this.hibernateTemplate.loadAll(collectionLogs.class);
	}
	
	@Transactional
	public List<collectionLogs> getByRecyclerContact(String contactId) {
		 List<collectionLogs> allLogs = hibernateTemplate.loadAll(collectionLogs.class);
		    List<collectionLogs> filteredLogs = new ArrayList<collectionLogs>();

		    for (collectionLogs log : allLogs) {
		        if (log.getRecyclerContactId().equals(contactId)) {
		            filteredLogs.add(log);
		        }
		    }

		    return filteredLogs;
	    
	}
	
	
	public collectionLogs getById(int id) {
	    return hibernateTemplate.get(collectionLogs.class, id);
	}

	@Transactional
	public void update(collectionLogs log) {
	    hibernateTemplate.update(log);
	}



	

}
