package com.star.dao.ly;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.area;
import com.star.pojo.city;
import com.star.pojo.province;
import com.star.pojo.user;

/**
 * 
 * @author Liu 修改地区的页面
 */

public interface sanjiliandong {

	//查询省
	public List<province> sheng();
	//查询市
	public List<city> shi(province province);
	//查询区
	public List<area> province(city city);
	//查询用户中的地区ID
	public List<user> selsan();

}
