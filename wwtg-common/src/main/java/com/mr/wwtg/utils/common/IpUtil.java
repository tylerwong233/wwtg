package com.mr.wwtg.utils.common;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;

public class IpUtil {
	
	private IpUtil(){}
	
	public static String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		if(StringUtils.isNotBlank(ip) && ip.length() >20){
			String[] ipStrs = ip.split(",");
			if(null != ipStrs && ipStrs.length > 0){
				ip = ipStrs[0];
			}
			if(StringUtils.isNotBlank(ip) && ip.length() >20){
				ip = ip.substring(0, 19);
			}
		}
		return ip;
	}
}
