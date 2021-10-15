package com.star.dao.ly;

import org.apache.ibatis.annotations.Param;

/**
 * 
 * @author Liu ĞŞ¸ÄÃÜÂë
 */

public interface xuiPassword {
	public int xuiP(@Param("password") String passwordHou,
			@Param("password1") String xuiQian, @Param("phone") String phone);
}
