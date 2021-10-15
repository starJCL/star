package com.star.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class article implements Serializable{
	private int id;//����id
	private String title;//���±���
	private String author;//����
	private String matter;//����
	private String article_img1 = "post__thumb4.jpg";//ͼƬ1
	private String article_img2="tu1.jpg";//ͼƬ2
	private String article_img3="tu2.jpg";;//ͼƬ3
	private String article_video1;//��Ƶ1
	private String article_video2;//��Ƶ2
	private String article_video3;//��Ƶ3
	private String article_music1;//��Ƶ1
	private String article_music2;//��Ƶ2
	private String article_music3;//��Ƶ3
	private like getLike;//����ʵ����
	private favorite favorite;
	
	public favorite getFavorite() {
		return favorite;
	}
	public void setFavorite(favorite favorite) {
		this.favorite = favorite;
	}


	private user user;//�û�����
	public user getUser() {
		return user;
	}
	public void setUser(user user) {
		this.user = user;
	}
	public like getGetLike() {
		return getLike;
	}
	public void setGetLike(like getLike) {
		this.getLike = getLike;
	}


	private int like;//���µ�����
	private List<user> list;//���޵��û���Ϣ
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public List<user> getList() {
		return list;
	}
	public void setList(List<user> list) {
		this.list = list;
	}


	public article(int id, String title, String author, String matter,
			String article_img1, String article_img2, String article_img3,
			String article_video1, String article_video2,
			String article_video3, String article_music1,
			String article_music2, String article_music3, int like,
			List<user> list, Date createDate, int audit, int type_id,
			int user_id, String mark1, String mark2, String mark3) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.matter = matter;
		this.article_img1 = article_img1;
		this.article_img2 = article_img2;
		this.article_img3 = article_img3;
		this.article_video1 = article_video1;
		this.article_video2 = article_video2;
		this.article_video3 = article_video3;
		this.article_music1 = article_music1;
		this.article_music2 = article_music2;
		this.article_music3 = article_music3;
		this.like = like;
		this.list = list;
		this.createDate = createDate;
		this.audit = audit;
		this.type_id = type_id;
		this.user_id = user_id;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
	}


	private Date createDate;//����ʱ��
	private int audit;//��� 1-����� 2-ͨ�� 3-δͨ��
	private int type_id;//����
	private int user_id;//�û�id
	private String mark1;//��ע1
	private String mark2;//��ע2
	private String mark3;//��ע3
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getMatter() {
		return matter;
	}
	public void setMatter(String matter) {
		this.matter = matter;
	}
	public String getArticle_img1() {
		return article_img1;
	}
	public void setArticle_img1(String article_img1) {
		this.article_img1 = article_img1;
	}
	public String getArticle_img2() {
		return article_img2;
	}
	public void setArticle_img2(String article_img2) {
		this.article_img2 = article_img2;
	}
	public String getArticle_img3() {
		return article_img3;
	}
	public void setArticle_img3(String article_img3) {
		this.article_img3 = article_img3;
	}
	public String getArticle_video1() {
		return article_video1;
	}
	public void setArticle_video1(String article_video1) {
		this.article_video1 = article_video1;
	}
	public String getArticle_video2() {
		return article_video2;
	}
	public void setArticle_video2(String article_video2) {
		this.article_video2 = article_video2;
	}
	public String getArticle_video3() {
		return article_video3;
	}
	public void setArticle_video3(String article_video3) {
		this.article_video3 = article_video3;
	}
	public String getArticle_music1() {
		return article_music1;
	}
	public void setArticle_music1(String article_music1) {
		this.article_music1 = article_music1;
	}
	public String getArticle_music2() {
		return article_music2;
	}
	public void setArticle_music2(String article_music2) {
		this.article_music2 = article_music2;
	}
	public String getArticle_music3() {
		return article_music3;
	}
	public void setArticle_music3(String article_music3) {
		this.article_music3 = article_music3;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public int getAudit() {
		return audit;
	}
	public void setAudit(int audit) {
		this.audit = audit;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
	
	
	
	public article(){
		
	}
	
	
	public article(int id, String title, String author, String matter,
			String article_img1, String article_img2, String article_img3,
			String article_video1, String article_video2,
			String article_video3, String article_music1,
			String article_music2, String article_music3, Date createDate,
			int audit, int type_id, int user_id, String mark1, String mark2,
			String mark3) {
		this.id = id;
		this.title = title;
		this.author = author;
		this.matter = matter;
		this.article_img1 = article_img1;
		this.article_img2 = article_img2;
		this.article_img3 = article_img3;
		this.article_video1 = article_video1;
		this.article_video2 = article_video2;
		this.article_video3 = article_video3;
		this.article_music1 = article_music1;
		this.article_music2 = article_music2;
		this.article_music3 = article_music3;
		this.createDate = createDate;
		this.audit = audit;
		this.type_id = type_id;
		this.user_id = user_id;
		this.mark1 = mark1;
		this.mark2 = mark2;
		this.mark3 = mark3;
	}
	
	
	
	
}
