package com.star.pojo;

import java.io.Serializable;

public class type implements Serializable{
	
	private int id;//id
	private String type;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public type(){
		
	}
	
	public type(int id, String type) {
		this.id = id;
		this.type = type;
	}
	
	
	
}
