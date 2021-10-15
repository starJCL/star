package com.star.dao.jcl;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.article;
import com.star.pojo.favorite;

public interface SCjia {
	// 查询收藏夹名称
	public List<favorite> favoriteName(@Param("id") int id);

	// 查询收藏的文章
	public List<article> favoritewz(@Param("id") int id,
			@Param("name") String name);

	// 删除收藏的文章
	public int del(@Param("id") int id);
}
