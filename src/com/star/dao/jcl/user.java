package com.star.dao.jcl;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface user {
	public List<com.star.pojo.user> list();
	
	public int xiumi(@Param("mi")String a,@Param("phone")String b);
}
