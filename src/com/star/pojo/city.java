package com.star.pojo;

import java.io.Serializable;

public class city implements Serializable{
	private int id;//±àºÅ
	private String city_code;//ÊÐ±àºÅ
	private String city_name;//ÊÐÃû³Æ
	private String pro_code;//Ê¡±àºÅ
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCity_code() {
		return city_code;
	}
	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getPro_code() {
		return pro_code;
	}
	public void setPro_code(String pro_code) {
		this.pro_code = pro_code;
	}
	
	
	
	public city(){
		
	}
	
	public city(int id, String city_code, String city_name, String pro_code) {
		this.id = id;
		this.city_code = city_code;
		this.city_name = city_name;
		this.pro_code = pro_code;
	}
	
	
	
}
