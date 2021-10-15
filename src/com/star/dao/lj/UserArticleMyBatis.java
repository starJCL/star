package com.star.dao.lj;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.article;
import com.star.pojo.user;

public interface UserArticleMyBatis {
	// 查看当前用户发布的文章
	public List<article> list(@Param("fuzzy")String mohu, @Param("order")String sort, @Param("name")String name);
	
	// 查看当前文章的点赞数
	public int Article_Like(@Param("id")int id);
	
	// 查看给当前文章点赞的用户信息
	public List<user> Article_Like_User(@Param("id")int id);
	
	// 根据id查询全部内容
	public List<article> detail(@Param("id")int id);
	
	// 删除帖子
	public int del(@Param("id")int id);
	
	// 先查看该用户是否已点赞该文章
	public int count(@Param("name")String name, @Param("id")int id);
	
	// 经判断点赞或删除
	public int like(@Param("name")String name, @Param("id")int id, @Param("count")int count);
}
