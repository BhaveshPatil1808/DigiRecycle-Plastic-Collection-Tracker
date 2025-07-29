package com.digirecycle.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "collectionlogs")
public class collectionLogs {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String userContactId, recyclerContactId,plasticType, requestDate,status;
	private int quantity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserContactId() {
		return userContactId;
	}
	public void setUserContactId(String userContactId) {
		this.userContactId = userContactId;
	}
	public String getRecyclerContactId() {
		return recyclerContactId;
	}
	public void setRecyclerContactId(String recyclerContactId) {
		this.recyclerContactId = recyclerContactId;
	}
	public String getPlasticType() {
		return plasticType;
	}
	public void setPlasticType(String plasticType) {
		this.plasticType = plasticType;
	}
	public String getRequestDate() {
		return requestDate;
	}
	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	

}
