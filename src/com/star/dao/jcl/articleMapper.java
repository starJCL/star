package com.star.dao.jcl;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.article;
import com.star.pojo.type;

public interface articleMapper {
	//添加文章
	public int article(article article);
	//查询视频
	public List<article> videos(@Param("id")int a);
	
	/*所有的文章数量*/
	public int wenShu(@Param("id")int a);
	
	/*所有文章的点赞数*/
	public int likeShu(@Param("id")int a);
	
	
	/*没有通过审核的文章*/
	public int weiShu(@Param("id")int a);
	
	/*本月发布的文章*/
	public int yueShu(@Param("id")int a);
	
	
	/*每个类型的数量*/
	public List<type> typeNum(@Param("id")int a);
	
	

}
