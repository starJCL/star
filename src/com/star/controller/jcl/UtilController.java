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
	 �ϴ�ͼƬ 
	* @Title: uploadImage 
	* @Description: �ϴ�ͼƬ 
	* @param image Ҫ�ϴ���ͼƬ
	* @param request
	* @return Map<String, Object> location(ͼƬҪ�ϴ���λ��)
	* @throws
	 */
	@RequestMapping("/uploadImage")
	@ResponseBody
	public  Map<String, Object> uploadImage( @RequestParam("file") MultipartFile file,
			HttpServletRequest request) throws Exception {
		Map<String, Object> ret = new HashMap<String, Object>();
		
		String realPath = request.getSession().getServletContext().getRealPath("/"); //�����ʵ·��
		String stuId = request.getParameter("stuId");//���ѧ��
		Integer maxLogId = Integer.parseInt(request.getParameter("maxLogId")); // ���������־���
		Integer logId = maxLogId+1;//��ǰ��־���
		String location = ImageUtil.uploadImage(file, realPath, stuId, logId);
		
		ret.put("location", location);
		
		return ret;
	}
}