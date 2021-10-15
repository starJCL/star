package com.star.pojo;

import java.io.Serializable;

public class like implements Serializable{
	private int id;//id
	private int u_id;//用户的id 就是谁点的赞
	private int a_id;//文章id，给那个文章点的赞
	private int c_id;//评论点赞
	private String mark1;//备用
	private String mark2;//备用
	private String mark3;//备用
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
		this.a_id = a_id;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
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
	
	public like(){
		
	}
	
	public like(int id, int u_id, int a_id, int c_id, String mark1,
			String mark2, String mark3) {
		this.id = id;
		this.u_id = u_id;
		this.a_id = a_id;
		this.c_id = c_id;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
	}
	
	
	
	
}
