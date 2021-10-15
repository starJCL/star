package com.star.pojo;
import java.io.Serializable;

public class permission implements Serializable{
	private int id;//id
	private String name;//权限名称
	private String desc;//权限描述
	private String url;//权限访问路径
	private String per_code;//权限标识
	private int sort;//等级排序
	private String mark1;//备用
	private String mark2;//备用
	private String mark3;//备用
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPer_code() {
		return per_code;
	}
	public void setPer_code(String per_code) {
		this.per_code = per_code;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getMark1() {
		return mark1;
	}
	public void setMark1(String mark1) {
		this.mark1 = mark1;
	}
	public String getMark2() {
		return mark2;
	}
	public void setMark2(String mark2) {
		this.mark2 = mark2;
	}
	public String getMark3() {
		return mark3;
	}
	public void setMark3(String mark3) {
		this.mark3 = mark3;
	}
	
	public permission(){
		
	}
	
	
	
	public permission(int id, String name, String desc, String url,
			String per_code, int sort, String mark1, String mark2, String mark3) {
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.url = url;
		this.per_code = per_code;
		this.sort = sort;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
	}
	
	
	
}
