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
	Login dao;//user��dao��
	@RequestMapping("/login")
	/*
	 * ��¼�ĺ�̨����
	 */
	public String getUser(String name,String password,String c,HttpServletRequest request,HttpServletResponse response){
		user user=dao.login(name, password);//����dao��ķ�������ʵ����
		if(user!=null){//���user��Ϊ�վ�˵�����������
			request.getSession().setAttribute("name", name);//���������ظ�ǰ̨
			request.getSession().setAttribute("nicheng",user.getNickname());//���ǳƷ��ظ�ǰ̨
			request.getSession().setAttribute("id", user.getId());//�����ظ�ǰ̨
			request.getSession().setAttribute("start", user.getCard_state());//���û�״̬���ظ�ǰ̨
			request.getSession().setAttribute("user_grade", user.getUser_grade());//��vip
			request.getSession().setAttribute("bagJpg", user.getUserBackground());
			System.out.println(user.getUserBackground());
			request.getSession().setAttribute("headJpg", user.getUser_img());
			System.out.println(user.getUser_img());
			try {
				request.getSession().setAttribute("account_state", user.getAccount_state());
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}//�û��˺�״̬
			if(c!=null){
				//�������
				try {
					request.setCharacterEncoding("utf-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					//��ֵ����cookie����
					Cookie c1 = new Cookie("name",name);
					Cookie c2 = new Cookie("password",password);
					response.addCookie(c1);
					response.addCookie(c2);
				}
			return "redirect:/star/list.jsp";//������ҳ����¼�ɹ��������
		}else{
			request.getSession().setAttribute("error", "�û������벻��ȷ");
			
		return "redirect:/login.jsp";//��¼ʧ�ܣ����ص���¼ҳ��
		}
	}  
	@RequestMapping(value="/register",method=RequestMethod.POST)//ת����post�ķ���
	public String getUser(user user,HttpServletRequest request,@RequestParam("f1")MultipartFile file) throws IllegalStateException, IOException{
		  
		String newsString=UUID.randomUUID().toString();//�����������
		   String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"img");//�ļ���ŵ�λ��
		   File dir = new File(path,newsString+".jpg");//����һ���ļ�       
	        if(!dir.exists()){  //����ļ�������
	            dir.mkdirs();  
	        }  
	        //MultipartFile�Դ��Ľ�������  
	        file.transferTo(dir); 
	         long l = System.currentTimeMillis();
	         Date date = new Date(l);
	         user.setUser_img(newsString+".jpg");//����Ƭ��ַ����ʵ����
	         user.setCreateDate(date);
		    int rows=dao.register(user);//����dao�㷽��
		   
		   return "redirect:/login.jsp";//���ص���¼ҳ��
	}
	@RequestMapping(value="/getname",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object getname(String name){
		System.out.println(name+"name");
		int rows=dao.getname(name);//����������ѯ�Ƿ����ظ�������
		if(rows>0){
	    return JSONArray.toJSONString("true");
		}else{
	    return JSONArray.toJSONString("false");
		}
		
	}
	@RequestMapping(value="/getphone",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object getphone(String phone){
		int rows=dao.getphone(phone);//���ݲ�ѯ�Ƿ����ظ�������
		if(rows>0){
	    return JSONArray.toJSONString("true");
		}else{
	    return JSONArray.toJSONString("false");
		}
		
	}
	@RequestMapping(value="/getuser",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public String getuser(){
		int index=(int)Math.floor(Math.random()*(5-1+1))+1;//1-5֮��������
		return JSONArray.toJSONString(dao.users(index));
	}
	@RequestMapping(value="/userimg",method=RequestMethod.POST)//ת����post�ķ���
	public String userimg(int id,HttpServletRequest request,@RequestParam("f1")MultipartFile file) throws IllegalStateException, IOException{
		  user user=new user();
		String newsString=UUID.randomUUID().toString();//�����������
		   String path = request.getSession().getServletContext().getRealPath("img");//�ļ���ŵ�λ��
		   File dir = new File(path,newsString+".jpg");//����һ���ļ�       
	        if(!dir.exists()){  //����ļ�������
	            dir.mkdirs();  
	        }  
	        //MultipartFile�Դ��Ľ�������  
	        file.transferTo(dir); 
	         String userimg=newsString+".jpg";//����Ƭ��ַ����ʵ����
		    int rows=dao.uphead(userimg, id);//����dao�㷽��
		    request.getSession().setAttribute("headJpg", user.getUser_img());
		    return "redirect:/star/list.jsp";//���ص���¼ҳ��
	}
	@RequestMapping(value="/bageimg",method=RequestMethod.POST)//ת����post�ķ���
	public String bageimg(int id,HttpServletRequest request,@RequestParam("f1")MultipartFile file) throws IllegalStateException, IOException{
		  user user=new user();
		  String newsString=UUID.randomUUID().toString();//�����������
		   String path = request.getSession().getServletContext().getRealPath("img");//�ļ���ŵ�λ��
		   File dir = new File(path,newsString+".jpg");//����һ���ļ�       
	        if(!dir.exists()){  //����ļ�������
	            dir.mkdirs();  
	        }  
	        //MultipartFile�Դ��Ľ�������  
	        file.transferTo(dir); 
	         String userimg=newsString+".jpg";//����Ƭ��ַ����ʵ����
		    int rows=dao.upbage(userimg, id);//����dao�㷽��
		    request.getSession().setAttribute("bagJpg", user.getUserBackground());
		    return "redirect:/star/list.jsp";//���ص���¼ҳ��
	}

}
