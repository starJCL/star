package com.star.pojo;

import java.io.Serializable;

public class role implements Serializable{
	private int id;//id
	private String name;//Ȩ��
	private String codeName;//��ɫ����
	private int type;//�����ɫ
	private String desc;//����
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
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public role(){
		
	}
	
	
	public role(int id, String name, String codeName, int type, String desc) {
		this.id = id;
		this.name = name;
		this.codeName = codeName;
		this.type = type;
		this.desc = desc;
	}
	
	
	
	
}
