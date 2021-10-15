package com.star.dao.znn.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.user;

public interface Login {
	public user login(@Param("name")String name,@Param("pwd")String pwd);
	public int register(user user);
	public int getname(@Param("name")String name);
	public int getphone(@Param("phone")String phone);
	public List<user>users(@Param("index")int index);
    public int uphead(@Param("userimg")String user,@Param("id")int id);
    public int upbage(@Param("bageimg")String user,@Param("id")int id);
}
