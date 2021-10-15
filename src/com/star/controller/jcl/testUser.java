package com.star.controller.jcl;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.cloopen.rest.demo.SDKTestSendTemplateSMS;
import com.star.dao.jcl.user;
@Controller
@RequestMapping("/star")
public class testUser {
	
	@Resource
	user u;
	
	@RequestMapping(value = "/json", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object list() {

		return JSONArray.toJSONString(u.list());
	}
	
	String a = null;
	
	@RequestMapping("/yan")
	public  void yan(HttpServletRequest request){
		
		a = SDKTestSendTemplateSMS.YZCode();
		System.out.println("验证码是："+a);
		
		
		request.getSession().setAttribute("yanzhengma", a);
		
	}
	
	@RequestMapping("/xiumi")
	public  String  xiumi(String mi,String phone,String code){
		
		if(code.equals(a)){
			System.out.println("修改密码");
			u.xiumi(mi, phone);
		}
			System.out.println("验证码错误");
		
		return "redirect:/login.jsp";
		
		
	}
	
	
	

}
