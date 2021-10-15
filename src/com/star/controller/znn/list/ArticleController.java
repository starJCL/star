package com.star.controller.znn.list;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.znn.list.ArticleDao;

@Controller
@RequestMapping("list")
public class ArticleController {
	@Resource
	ArticleDao dao;
	@RequestMapping(value = "/article", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object getarticle(int id, String str) {
		int count=dao.getcount(1);
		int index=(int)Math.floor(Math.random()*((count-1)-1+1))+1;//1-5之间的随机数
		return JSONArray.toJSONString(dao.getarticle(id, str,index));
	}

	/**
	 * 查询全部的内容根据id
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/all", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object getall(int id) {

		return JSONArray.toJSONString(dao.getall(id));
	}

	@RequestMapping(value = "/ranking", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object ranking() {
		return JSONArray.toJSONString(dao.ranking());
	}
	@RequestMapping(value = "/essay", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object essay() {
		int count=dao.getcount(1);
		int index=(int)Math.floor(Math.random()*((count-1)-1+1))+1;//1-5之间的随机数
		return JSONArray.toJSONString(dao.essay(index));
	}
	@RequestMapping(value = "/getimg", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getimg(int id) {
		int count=dao.getcount(4);
		int index=(int)Math.floor(Math.random()*((count-1)-1+1))+1;//1-5之间的随机数
		return JSONArray.toJSONString(dao.getimg(id,index));
	}

}
