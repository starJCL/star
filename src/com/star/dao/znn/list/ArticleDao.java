package com.star.dao.znn.list;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.article;

public interface ArticleDao {
	public List<article> getarticle(@Param("id") int id,
			@Param("str") String str,@Param("index")int index);

	public List<article> getall(@Param("id") int id);

	public List<article> ranking();
	public List<article> essay(@Param("index")int index);
	public int getcount(@Param("tid")int tid);
	public List<article>getimg(@Param("id")int id,@Param("index")int index);

}
