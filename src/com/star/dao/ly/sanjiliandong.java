package com.star.dao.ly;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.star.pojo.area;
import com.star.pojo.city;
import com.star.pojo.province;
import com.star.pojo.user;

/**
 * 
 * @author Liu �޸ĵ�����ҳ��
 */

public interface sanjiliandong {

	//��ѯʡ
	public List<province> sheng();
	//��ѯ��
	public List<city> shi(province province);
	//��ѯ��
	public List<area> province(city city);
	//��ѯ�û��еĵ���ID
	public List<user> selsan();

}
