package com.star.dao.jcl;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.article;
import com.star.pojo.favorite;

public interface SCjia {
	// ��ѯ�ղؼ�����
	public List<favorite> favoriteName(@Param("id") int id);

	// ��ѯ�ղص�����
	public List<article> favoritewz(@Param("id") int id,
			@Param("name") String name);

	// ɾ���ղص�����
	public int del(@Param("id") int id);
}
