package com.star.dao.jcl;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.article;
import com.star.pojo.type;

public interface articleMapper {
	//�������
	public int article(article article);
	//��ѯ��Ƶ
	public List<article> videos(@Param("id")int a);
	
	/*���е���������*/
	public int wenShu(@Param("id")int a);
	
	/*�������µĵ�����*/
	public int likeShu(@Param("id")int a);
	
	
	/*û��ͨ����˵�����*/
	public int weiShu(@Param("id")int a);
	
	/*���·���������*/
	public int yueShu(@Param("id")int a);
	
	
	/*ÿ�����͵�����*/
	public List<type> typeNum(@Param("id")int a);
	
	

}
