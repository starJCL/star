package com.star.pojo;

import java.io.Serializable;
import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class favorite implements Serializable{
	private int id;//收藏编号
	private int a_id;//文章编号
	private String name;//收藏夹名称
	private int u_id;//用户编号
	@JSONField(format="yyyy-MM-dd")
	private Date createDate;//创建日期
	private String mark1;//备用1
	private String mark2;//备用2
	private String mark3;//备用3
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
		this.a_id = a_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
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
	
	
	public favorite(){
		
	}
	
	public favorite(int id, int a_id, String name, int u_id, Date createDate,
			String mark1, String mark2, String mark3) {
		this.id = id;
		this.a_id = a_id;
		this.name = name;
		this.u_id = u_id;
		this.createDate = createDate;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
	}
	
	
	
}
