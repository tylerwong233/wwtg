package com.mr.qdp.utils.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class PhoneUtil {
	private static final Logger logger = LoggerFactory.getLogger(PhoneUtil.class);

	private static final String TAOBAO_MOBILE_SEGMENT = "https://tcc.taobao.com/cc/json/mobile_tel_segment.htm?tel=";

	public static String getPhoneCarrier(String phoneNum) {
		StringBuilder sb = new StringBuilder();
		try {
			URL url = new URL(TAOBAO_MOBILE_SEGMENT + phoneNum);
			URLConnection uc = url.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream(), "GBK"));
			String inputLine = null;
			while ((inputLine = in.readLine()) != null) {
				sb.append(inputLine);
			}
			in.close();
		} catch (IOException e) {
			logger.info("Exception", e);
			return null;
		}
		JSONObject jsonObj = JSON.parseObject(sb.subSequence(sb.indexOf("{ "), sb.length()).toString());
		return jsonObj.getString("carrier");
	}
}
