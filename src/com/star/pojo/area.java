package com.star.pojo;

import java.io.Serializable;

public class area implements Serializable{
	private int id;//±àºÅ
	private String area_code;//Çø±àºÅ
	private String area_name;//ÇøÃû³Æ
	private String city_code;//ÊÐ±àºÅ
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArea_code() {
		return area_code;
	}
	public void setArea_code(String area_code) {
		this.area_code = area_code;
	}
	public String getArea_name() {
		return area_name;
	}
	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}
	public String getCity_code() {
		return city_code;
	}
	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}
	
	
	public area(){
		
	}
	
	
	public area(int id, String area_code, String area_name, String city_code) {
		this.id = id;
		this.area_code = area_code;
		this.area_name = area_name;
		this.city_code = city_code;
	}
	
	
	
}
