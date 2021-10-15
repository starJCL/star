package com.star.controller.ly;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.ly.sanjiliandong;
import com.star.pojo.city;
import com.star.pojo.province;

@Controller
@RequestMapping("/star")
public class sanjiliandongController {
	
	@Resource
	sanjiliandong san;
	
	@RequestMapping(value = "/sheng", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object sheng(String sheng){
		return JSONArray.toJSONString(san.sheng());
	}
	
	
	@RequestMapping(value = "/shi", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object shi(province province){
		
		return JSONArray.toJSONString(san.shi(province));
	}	
	
	
	
	@RequestMapping(value = "/sanji", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object san(city city){
		
		return JSONArray.toJSONString(san.province(city));
	}	
	
	
	
	
}
