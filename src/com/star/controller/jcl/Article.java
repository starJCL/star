package com.star.controller.jcl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.jcl.articleMapper;
import com.star.pojo.*;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/star")
public class Article {
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// �������ڸ�ʽ
	Date date = new Date();
	long xianTime = date.getTime();// ��ǰʱ��ĺ�����
	long faTime = 0; // ����ʱ��ĺ�����
	@Resource
	articleMapper atticle;
	article article = new article();

	@RequestMapping("/article")
	public String article(article article, String num, String ding, String shi,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		Integer number = new Integer(num == null ? "0" : num);
		this.article = article;// �������������ݸ�ֵ����Ա
		article.setCreateDate(date);// ��ֵ��ǰʱ��

		if (number > 0 && ding != null) {

			if ("����".equals(shi)) {
				System.out.println("����");
				number = number * 60000;
				System.out.println(number);
				faTime = (long) xianTime + number;
				date.setTime(faTime);
				article.setCreateDate(date);// ��ֵ����ʱ��
			}
			if ("Сʱ".equals(shi)) {
				System.out.println("Сʱ");
				number = number * 3600000;
				System.out.println(number);
				faTime = (long) xianTime + number;
				date.setTime(faTime);
				article.setCreateDate(date);// ��ֵ����ʱ��

			}

		} else {

			atticle.article(article);

		}

		return "redirect:/StarBBS/star/list.jsp?ll=wz";

	}

	@Scheduled(cron = "0/5 * * * * ?")
	// ÿ��5�����һ��
	public void clearCaptcha() {
		xianTime = System.currentTimeMillis();// ��ǰʱ��ĺ�����
		System.out.println("��ʼִ�ж�ʱ����");
		System.out.println((xianTime >= faTime && faTime != 0) + "�Ƿ���");
		System.out.println("����ʱ�䣺" + df.format(xianTime) + "��������" + xianTime);
		System.out.println("����ʱ�䣺" + df.format(faTime) + "��������" + faTime);
		if (xianTime >= faTime && faTime != 0) {
			System.out.println("��������");
			atticle.article(article);
			user u = new user();
			u.setMark1("�����ɹ�");
			faTime = 0;
			System.out.println("�������³ɹ�");
			// ��ȡҳ��title�ɹ��ο�
		}

	}

	/**
	 * ��ѯ��Ƶ
	 * 
	 * @return ����json����
	 */
	@RequestMapping(value = "/videos", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object list(int id) {
		return JSONArray.toJSONString(atticle.videos(id));
	}

	/* ���е��������� */
	@RequestMapping(value = "/wenShu", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public int wenShu(int id) {
		return atticle.wenShu(id);
	}

	// �������µĵ�����
	@RequestMapping(value = "/likeShu", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public int likeShu(int id) {
		return atticle.likeShu(id);
	}

	// û��ͨ����˵�����
	@RequestMapping(value = "/weiShu", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public int weiShu(int id) {
		return atticle.weiShu(id);
	}

	// ���·���������
	@RequestMapping(value = "/yueShu", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public int yueShu(int id) {
		return atticle.yueShu(id);
	}

	// ÿ�����͵�����
	@RequestMapping(value = "/typeNum", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object typeNum(int id) {
		return JSONArray.toJSONString(atticle.typeNum(id));
	}
	
	
	
	

	

}
