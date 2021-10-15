package com.star.controller.znn.user;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.star.dao.znn.user.Login;
import com.star.pojo.user;

@Controller
@RequestMapping("user")
public class LoginController {
	@Resource
	Login dao;//user的dao层
	@RequestMapping("/login")
	/*
	 * 登录的后台功能
	 */
	public String getUser(String name,String password,String c,HttpServletRequest request,HttpServletResponse response){
		user user=dao.login(name, password);//调用dao层的方法返回实体类
		if(user!=null){//如果user不为空就说明有这个个人
			request.getSession().setAttribute("name", name);//将姓名返回给前台
			request.getSession().setAttribute("nicheng",user.getNickname());//将昵称返回给前台
			request.getSession().setAttribute("id", user.getId());//将返回给前台
			request.getSession().setAttribute("start", user.getCard_state());//将用户状态返回给前台
			request.getSession().setAttribute("user_grade", user.getUser_grade());//将vip
			request.getSession().setAttribute("bagJpg", user.getUserBackground());
			System.out.println(user.getUserBackground());
			request.getSession().setAttribute("headJpg", user.getUser_img());
			System.out.println(user.getUser_img());
			try {
				request.getSession().setAttribute("account_state", user.getAccount_state());
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}//用户账号状态
			if(c!=null){
				//解决乱码
				try {
					request.setCharacterEncoding("utf-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					//将值放在cookie里面
					Cookie c1 = new Cookie("name",name);
					Cookie c2 = new Cookie("password",password);
					response.addCookie(c1);
					response.addCookie(c2);
				}
			return "redirect:/star/list.jsp";//返回主页，登录成功的情况下
		}else{
			request.getSession().setAttribute("error", "用户名密码不正确");
			
		return "redirect:/login.jsp";//登录失败，返回到登录页面
		}
	}  
	@RequestMapping(value="/register",method=RequestMethod.POST)//转换成post的方法
	public String getUser(user user,HttpServletRequest request,@RequestParam("f1")MultipartFile file) throws IllegalStateException, IOException{
		  
		String newsString=UUID.randomUUID().toString();//产生随机名称
		   String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"img");//文件存放的位置
		   File dir = new File(path,newsString+".jpg");//生成一个文件       
	        if(!dir.exists()){  //如果文件不存在
	            dir.mkdirs();  
	        }  
	        //MultipartFile自带的解析方法  
	        file.transferTo(dir); 
	         long l = System.currentTimeMillis();
	         Date date = new Date(l);
	         user.setUser_img(newsString+".jpg");//将照片地址传给实体类
	         user.setCreateDate(date);
		    int rows=dao.register(user);//调用dao层方法
		   
		   return "redirect:/login.jsp";//返回到登录页面
	}
	@RequestMapping(value="/getname",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object getname(String name){
		System.out.println(name+"name");
		int rows=dao.getname(name);//根据姓名查询是否有重复的姓名
		if(rows>0){
	    return JSONArray.toJSONString("true");
		}else{
	    return JSONArray.toJSONString("false");
		}
		
	}
	@RequestMapping(value="/getphone",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object getphone(String phone){
		int rows=dao.getphone(phone);//根据查询是否有重复的姓名
		if(rows>0){
	    return JSONArray.toJSONString("true");
		}else{
	    return JSONArray.toJSONString("false");
		}
		
	}
	@RequestMapping(value="/getuser",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public String getuser(){
		int index=(int)Math.floor(Math.random()*(5-1+1))+1;//1-5之间的随机数
		return JSONArray.toJSONString(dao.users(index));
	}
	@RequestMapping(value="/userimg",method=RequestMethod.POST)//转换成post的方法
	public String userimg(int id,HttpServletRequest request,@RequestParam("f1")MultipartFile file) throws IllegalStateException, IOException{
		  user user=new user();
		String newsString=UUID.randomUUID().toString();//产生随机名称
		   String path = request.getSession().getServletContext().getRealPath("img");//文件存放的位置
		   File dir = new File(path,newsString+".jpg");//生成一个文件       
	        if(!dir.exists()){  //如果文件不存在
	            dir.mkdirs();  
	        }  
	        //MultipartFile自带的解析方法  
	        file.transferTo(dir); 
	         String userimg=newsString+".jpg";//将照片地址传给实体类
		    int rows=dao.uphead(userimg, id);//调用dao层方法
		    request.getSession().setAttribute("headJpg", user.getUser_img());
		    return "redirect:/star/list.jsp";//返回到登录页面
	}
	@RequestMapping(value="/bageimg",method=RequestMethod.POST)//转换成post的方法
	public String bageimg(int id,HttpServletRequest request,@RequestParam("f1")MultipartFile file) throws IllegalStateException, IOException{
		  user user=new user();
		  String newsString=UUID.randomUUID().toString();//产生随机名称
		   String path = request.getSession().getServletContext().getRealPath("img");//文件存放的位置
		   File dir = new File(path,newsString+".jpg");//生成一个文件       
	        if(!dir.exists()){  //如果文件不存在
	            dir.mkdirs();  
	        }  
	        //MultipartFile自带的解析方法  
	        file.transferTo(dir); 
	         String userimg=newsString+".jpg";//将照片地址传给实体类
		    int rows=dao.upbage(userimg, id);//调用dao层方法
		    request.getSession().setAttribute("bagJpg", user.getUserBackground());
		    return "redirect:/star/list.jsp";//返回到登录页面
	}

}
