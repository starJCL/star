package com.star.pojo;

import java.io.Serializable;
import java.util.Date;

public class comment implements Serializable{
	private int id;//id
	private int u_id;//评论的人
	private int a_id;//评论的文章
	private String desc;//评论的内容
	private Date careateDate;//发布日期
	private String mark1;//备用
	private String mark2;//备用
	private String mark3;//备用
	private int up_id;//评论
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
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Date getCareateDate() {
		return careateDate;
	}
	public void setCareateDate(Date careateDate) {
		this.careateDate = careateDate;
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
	public int getUp_id() {
		return up_id;
	}
	public void setUp_id(int up_id) {
		this.up_id = up_id;
	}
	
	
	public comment(){

	}
	
	public comment(int id, int u_id, int a_id, String desc, Date careateDate,
			String mark1, String mark2, String mark3, int up_id) {
		this.id = id;
		this.u_id = u_id;
		this.a_id = a_id;
		this.desc = desc;
		this.careateDate = careateDate;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
		this.up_id = up_id;
	}
	
	
	
	
	
}
