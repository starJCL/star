package com.cloopen.rest.demo;

import java.util.HashMap;
import java.util.Set;

import com.cloopen.rest.sdk.CCPRestSDK;

public class SDKTestSendTemplateSMS {

	/**
	 * @param args
	 */
	public static String YZCode() {
		HashMap<String, Object> result = null;

		CCPRestSDK restAPI = new CCPRestSDK();
		restAPI.init("app.cloopen.com", "8883");// 初始化服务器地址和端口，格式如下，服务器地址不需要写https://
		restAPI.setAccount("8a216da87b9af592017b9b839ca8004b", "809b7062bff14dd990a018e929dacf01");// 初始化主帐号和主帐号TOKEN
		restAPI.setAppId("8a216da87b9af592017b9b839ddc0051");// 初始化应用ID
		int sui=(int)((Math.random()*9+1)*100000);
		result = restAPI.sendTemplateSMS("13007769135","1" ,new String[]{String.valueOf(sui),"10"});

		System.out.println("SDKTestSendTemplateSMS result=" + result);
		
		if("000000".equals(result.get("statusCode"))){
			//正常返回输出data包体信息（map）
			HashMap<String,Object> data = (HashMap<String, Object>) result.get("data");
			Set<String> keySet = data.keySet();
			for(String key:keySet){
				Object object = data.get(key);
				System.out.println(key +" = "+object);
			}
			return restAPI.getCode();
		}else{
			//异常返回输出错误码和错误信息
			System.out.println("错误码=" + result.get("statusCode") +" 错误信息= "+result.get("statusMsg"));
		}
		return "";
	}

}
