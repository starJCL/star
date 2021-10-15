package com.star.controller.ly;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.ly.Information;
import com.star.dao.ly.xuiPassword;

@Controller	
@RequestMapping("/star")
public class xuiPasswordController {
	
	@Resource
	xuiPassword xuiGai;
	
	
	@RequestMapping(value = "/xuiP", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object list(String passwordHou,String xuiQian,String phone) {
		
		return JSONArray.toJSONString(xuiGai.xuiP(passwordHou, xuiQian,phone));
	}

}
