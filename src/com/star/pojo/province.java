package com.star.pojo;

import java.io.Serializable;

public class province implements Serializable{
	private int id;//���
	private String pro_code;//ʡ���
	private String pro_name;//ʡ����
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPro_code() {
		return pro_code;
	}
	public void setPro_code(String pro_code) {
		this.pro_code = pro_code;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	
	
	
	public province(){
		
	}
	
	public province(int id, String pro_code, String pro_name) {
		this.id = id;
		this.pro_code = pro_code;
		this.pro_name = pro_name;
	}
	
	
	
}
