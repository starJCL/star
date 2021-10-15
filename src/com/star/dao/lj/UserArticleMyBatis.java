package com.star.dao.lj;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.article;
import com.star.pojo.user;

public interface UserArticleMyBatis {
	// �鿴��ǰ�û�����������
	public List<article> list(@Param("fuzzy")String mohu, @Param("order")String sort, @Param("name")String name);
	
	// �鿴��ǰ���µĵ�����
	public int Article_Like(@Param("id")int id);
	
	// �鿴����ǰ���µ��޵��û���Ϣ
	public List<user> Article_Like_User(@Param("id")int id);
	
	// ����id��ѯȫ������
	public List<article> detail(@Param("id")int id);
	
	// ɾ������
	public int del(@Param("id")int id);
	
	// �Ȳ鿴���û��Ƿ��ѵ��޸�����
	public int count(@Param("name")String name, @Param("id")int id);
	
	// ���жϵ��޻�ɾ��
	public int like(@Param("name")String name, @Param("id")int id, @Param("count")int count);
}
