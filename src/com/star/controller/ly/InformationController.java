package com.star.controller.ly;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.ly.Information;
import com.star.pojo.user;


@Controller
@RequestMapping("/star")
public class InformationController {
	
	@Resource
	Information infor;
	
	
	@RequestMapping(value = "/selU", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object list(String username) {

		return JSONArray.toJSONString(infor.selU(username));
	}

	
	@RequestMapping("/updU")
	public String updat(user user){
		infor.updU(user);
		return "util";
	}
	
	
	@RequestMapping(value = "updS", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object updS(int card_state,String username) {

		return JSONArray.toJSONString(infor.updS(card_state, username));
	}
	
	@RequestMapping(value = "vip", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object vip(int user_grade,String username) {

		return JSONArray.toJSONString(infor.vip(user_grade, username));
	}

	
	
}
