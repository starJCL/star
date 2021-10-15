package com.star.pojo;

import java.io.Serializable;

public class state implements Serializable{
	private int id;//id
	private String state;//״̬
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public state(){
		
	}
	
	public state(int id, String state) {

		this.id = id;
		this.state = state;
	}
	
	
	
}
