package com.star.pojo;

import java.io.Serializable;
import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class user implements Serializable{
	private int id;//id
	private String nickname;//�ǳ�
	private String username;//�û���
	private String password;//����
	private int qq_card;//QQ�˺�
	private String phone;//�ֻ���
	private String address;//��ϸ��ַ
	private char sex;//�Ա�
	private int user_grade;//0-�û� 1-����Ա 2-VIp 3-��̳����Ա
	private String user_img;//�û�ͷ��
	private String userBackground="top-header1.jpg";//�û�����
	private int card_state;//�û�״̬ 1-���� 2-���� 3-���� 3-����
	private int account_state;//�˺�״̬ 0-���� 1-����
	private int user_provinse;//ʡ
	private int user_city;//��
	private int user_area;//��/��
	private String email;//����
	@JSONField(format="yyyy-MM-dd")
	private Date brithDate;//��������
	@Override
	public String toString() {
		return "user [id=" + id + ", nickname=" + nickname + ", username="
				+ username + ", password=" + password + ", qq_card=" + qq_card
				+ ", phone=" + phone + ", address=" + address + ", sex=" + sex
				+ ", user_grade=" + user_grade + ", user_img=" + user_img
				+ ", userBackground=" + userBackground + ", card_state="
				+ card_state + ", account_state=" + account_state
				+ ", user_provinse=" + user_provinse + ", user_city="
				+ user_city + ", user_area=" + user_area + ", email=" + email
				+ ", brithDate=" + brithDate + ", createDate=" + createDate
				+ ", desc=" + desc + ", mark1=" + mark1 + ", mark2=" + mark2
				+ ", mark3=" + mark3 + ", pro_name=" + pro_name
				+ ", city_name=" + city_name + ", area_name=" + area_name
				+ ", pro_code=" + pro_code + "]";
	}





	@JSONField(format="yyyy-MM-dd")
	private Date createDate;//����ʱ��
	private String desc;//����ǩ��
	private String mark1;//��ע1
	private String mark2;//��ע2
	private String mark3;//��ע3
	public user(int id, String nickname, String username, String password,
			int qq_card, String phone, String address, char sex,
			int user_grade, String user_img, String userBackground,
			int card_state, int account_state, int user_provinse,
			int user_city, int user_area, String email, Date brithDate,
			Date createDate, String desc, String mark1, String mark2,
			String mark3, String pro_name, String city_name, String area_name,
			String pro_code) {
		this.id = id;
		this.nickname = nickname;
		this.username = username;
		this.password = password;
		this.qq_card = qq_card;
		this.phone = phone;
		this.address = address;
		this.sex = sex;
		this.user_grade = user_grade;
		this.user_img = user_img;
		this.userBackground = userBackground;
		this.card_state = card_state;
		this.account_state = account_state;
		this.user_provinse = user_provinse;
		this.user_city = user_city;
		this.user_area = user_area;
		this.email = email;
		this.brithDate = brithDate;
		this.createDate = createDate;
		this.desc = desc;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
		this.pro_name = pro_name;
		this.city_name = city_name;
		this.area_name = area_name;
		this.pro_code = pro_code;
	}
	
	
	
	
	
	private String pro_name;//ʡ
	private String city_name;//��
	private String area_name;//��
	private String pro_code;//ʡ�ı��
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getArea_name() {
		return area_name;
	}
	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}
	public String getPro_code() {
		return pro_code;
	}
	public void setPro_code(String pro_code) {
		this.pro_code = pro_code;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getQq_card() {
		return qq_card;
	}
	public void setQq_card(int qq_card) {
		this.qq_card = qq_card;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public int getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(int user_grade) {
		this.user_grade = user_grade;
	}
	public String getUser_img() {
		return user_img;
	}
	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}
	public String getUserBackground() {
		return userBackground;
	}
	public void setUserBackground(String userBackground) {
		this.userBackground = userBackground;
	}
	public int getCard_state() {
		return card_state;
	}
	public void setCard_state(int card_state) {
		this.card_state = card_state;
	}
	public int getAccount_state() {
		return account_state;
	}
	public void setAccount_state(int account_state) {
		this.account_state = account_state;
	}
	public int getUser_provinse() {
		return user_provinse;
	}
	public void setUser_provinse(int user_provinse) {
		this.user_provinse = user_provinse;
	}
	public int getUser_city() {
		return user_city;
	}
	public void setUser_city(int user_city) {
		this.user_city = user_city;
	}
	public int getUser_area() {
		return user_area;
	}
	public void setUser_area(int user_area) {
		this.user_area = user_area;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBrithDate() {
		return brithDate;
	}
	public void setBrithDate(Date brithDate) {
		this.brithDate = brithDate;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
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
	
	
	public user(){
		
	}
	
	public user(int id, String nickname, String username, String password,
			int qq_card, String phone, String address, char sex,
			int user_grade, String user_img, String userBackground,
			int card_state, int account_state, int user_provinse,
			int user_city, int user_area, String email, Date brithDate,
			Date createDate, String desc, String mark1, String mark2,
			String mark3) {
		this.id = id;
		this.nickname = nickname;
		this.username = username;
		this.password = password;
		this.qq_card = qq_card;
		this.phone = phone;
		this.address = address;
		this.sex = sex;
		this.user_grade = user_grade;
		this.user_img = user_img;
		this.userBackground = userBackground;
		this.card_state = card_state;
		this.account_state = account_state;
		this.user_provinse = user_provinse;
		this.user_city = user_city;
		this.user_area = user_area;
		this.email = email;
		this.brithDate = brithDate;
		this.createDate = createDate;
		this.desc = desc;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
	}
	
	
	
	
	
}
