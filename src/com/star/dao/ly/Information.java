package com.star.dao.ly;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.star.pojo.user;
/**
 * 
 * @author Liu
 * �û��ķ���ҳ��
 *
 *
 */

public interface Information {
		//��ѯ�û�
		public List<user> selU(@Param("username") String username);
		
		//�޸�
		public int updU(user user);
		
		//�޸��û�״̬
		public int updS(@Param("card_state") int card_state,@Param("username") String username);
		
		//�޸��û�Ϊvip
		public int vip(@Param("user_grade") int user_grade,@Param("username") String username);
}
