package com.star.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ImageUtil {
	/**
	 �ϴ�ͼƬ ����ͼƬ�ϴ��� uploadImage/log/stuId/�ļ�����
	* @Title: uploadImage 
	* @Description: �ϴ�ͼƬ ����ͼƬ�ϴ��� uploadImage/log/stuId/�ļ�����
	* @param image Ҫ�ϴ���ͼƬ
	* @param basePath ����·��
	* @param stuId �ϴ��ߵ�ѧ��
	* @param logId ��ǰ��־���
	* @param request
	* @return String (ͼƬҪ�ϴ���λ��)
	* @throws
	 */
	public static String uploadImage(MultipartFile image, String basePath, String stuId, Integer logId) throws Exception{
		String ret = "";
		
		//����uuid��Ϊ�ļ�����
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		//����ļ����ͣ��������ͼƬ����ֹ�ϴ�
		String contentType = image.getContentType();
		//����ļ��ĺ�׺��
		String suffixName = contentType.substring(contentType.indexOf("/")+1);
		//�õ��ļ���
		String imageName = uuid+"."+suffixName;
		//��ȡ�ļ���·��
		String direPath = basePath+"uploadImage\\log\\"+stuId+"\\"+logId.toString();
		File direFile = new File(direPath);
		//�ļ�����������ڣ��½��ļ���
		if(direFile.exists() == false || direFile.isDirectory() == false){
			direFile.mkdir();
		}
		//�õ��ļ�·��
		String path = direPath+"\\"+imageName;
		
		image.transferTo(new File(path));
		
		ret="/Test/uploadImage/log/"+stuId+"/"+logId.toString()+"/"+imageName;
		
		return ret;
	}
}
