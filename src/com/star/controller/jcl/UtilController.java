package com.star.controller.jcl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.star.util.ImageUtil;
@RequestMapping("utilController")
@Controller
public class UtilController {
	/**
	 上传图片 
	* @Title: uploadImage 
	* @Description: 上传图片 
	* @param image 要上传的图片
	* @param request
	* @return Map<String, Object> location(图片要上传的位置)
	* @throws
	 */
	@RequestMapping("/uploadImage")
	@ResponseBody
	public  Map<String, Object> uploadImage( @RequestParam("file") MultipartFile file,
			HttpServletRequest request) throws Exception {
		Map<String, Object> ret = new HashMap<String, Object>();
		
		String realPath = request.getSession().getServletContext().getRealPath("/"); //获得真实路径
		String stuId = request.getParameter("stuId");//获得学号
		Integer maxLogId = Integer.parseInt(request.getParameter("maxLogId")); // 获得最大的日志编号
		Integer logId = maxLogId+1;//当前日志编号
		String location = ImageUtil.uploadImage(file, realPath, stuId, logId);
		
		ret.put("location", location);
		
		return ret;
	}
}