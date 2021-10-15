package com.star.controller.lj;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.lj.UserArticleMyBatis;
import com.star.pojo.article;
import com.star.pojo.user;

@Controller
@RequestMapping("/article")
public class UserArticleServlet {
	@Resource
	UserArticleMyBatis dao;
	
	@RequestMapping(value="/list",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object delAll(HttpServletRequest request, String mohu, String sort, String name){
		mohu = mohu == null ? "%" : "%" + mohu + "%";
		name = name == null ? "" : name;
		List<article> list = dao.list(mohu, sort, name);
		for (article a : list) {
			a.setLike(dao.Article_Like(a.getId()));
		}
		
		return JSONArray.toJSONString(list);
	}
	
	@RequestMapping(value="/detail",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object detail(HttpServletRequest request, int id){
		List<article> list = dao.detail(id);
			
		return JSONArray.toJSONString(list);
	}
	
	@RequestMapping("/del")
	public String delete(int id, HttpServletRequest request){
		int i = dao.del(id);
		request.setAttribute("marr", i);
		return "Personal";
	}
	
	/*@RequestMapping("/like")
	public String like(String name, int id, HttpServletRequest request){
		int count = dao.count(name, id);
		int like = dao.like(name, id, count);
		request.setAttribute("marr", like);
		return "Personal";
	}*/
	
	@RequestMapping(value="/like",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object like(String name, int id){
		int count = dao.count(name, id);
		int like = dao.like(name, id, count);
		
		return JSONArray.toJSONString(count);
	}
}
