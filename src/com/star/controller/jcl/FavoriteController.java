package com.star.controller.jcl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.jcl.SCjia;
import com.star.pojo.article;
import com.star.pojo.favorite;

@Controller
@RequestMapping("/star")
public class FavoriteController {
	@Resource
	SCjia jia;

	@RequestMapping("/shouName")
	public String ShouName(Map map, int id) {
		
		List<favorite> favoriteName = jia.favoriteName(id);
		for (favorite favorite : favoriteName) {
			System.out.println(favorite.getName());
		}
		map.put("list", favoriteName);
		return "favorite";
	}
	
	@RequestMapping("/del")
	public String dek(int id) {
		jia.del(id);
		return "favorite";
	}
	
	
	@RequestMapping(value="/shouWz",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object getname(String name,int id){
		List<article> favoritewz = jia.favoritewz(id, name);
		for (article article : favoritewz) {
			System.out.println(article.getUser().getNickname()+article.getCreateDate());
		}
		
		
	    return JSONArray.toJSON(favoritewz);
		
		
	}
}
