package com.star.dao.ly;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.star.pojo.user;
/**
 * 
 * @author Liu
 * 用户的方法页面
 *
 *
 */

public interface Information {
		//查询用户
		public List<user> selU(@Param("username") String username);
		
		//修改
		public int updU(user user);
		
		//修改用户状态
		public int updS(@Param("card_state") int card_state,@Param("username") String username);
		
		//修改用户为vip
		public int vip(@Param("user_grade") int user_grade,@Param("username") String username);
}
