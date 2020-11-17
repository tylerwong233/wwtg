package com.mr.qdp.utils.text;

import java.util.HashMap;
import java.util.Map;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriTemplate;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class TranslateApi {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		System.out.println(translate("啊"));

	}

	public static String translate(String str) {
		try {
			String url = "http://fanyi.baidu.com/transapi";
			UriTemplate uriTemplate = new UriTemplate(url);
			Map<String, String> uriVariables = new HashMap<String, String>();
			String uri = uriTemplate.expand(uriVariables).toString();
			RestTemplate template = new RestTemplate();
			MultiValueMap<String, String> requestEntity = new LinkedMultiValueMap<>();
			requestEntity.add("from", "zh");
			requestEntity.add("to", "en");
			requestEntity.add("query", str);
			String resultJson = template.postForObject(uri, requestEntity, String.class);
			JSONObject root = (JSONObject) JSON.parse(resultJson);
			JSONArray data = (JSONArray) root.get("data");
			JSONObject array1Object = (JSONObject) data.get(0);
			String dst = (String) array1Object.getString("dst");

			return dst;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}