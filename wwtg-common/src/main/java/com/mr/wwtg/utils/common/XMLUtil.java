package com.mr.wwtg.utils.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Node;

/**
 * xml解析
 */
public class XMLUtil {

	private XMLUtil() {
	}

	public static List<String> getNodeAttrList(String xmlContent, String xpath) throws DocumentException {
		Document doc = DocumentHelper.parseText(xmlContent);
		List<String> result = new ArrayList<>();
		if (null == doc) {
			return result;
		}
		List<?> nodeList = doc.selectNodes(xpath);
		if (nodeList != null && nodeList.size() > 0) {
			result = new ArrayList();
			int begin = xpath.lastIndexOf("@");
			int end = xpath.indexOf("]", begin + 1);
			if (begin == -1 || end == -1) {
				throw new IllegalArgumentException("no attribute has be assigned in xpath!");
			}

			String attrName = xpath.substring(begin, end);
			Iterator i$ = nodeList.iterator();

			while (i$.hasNext()) {
				Object obj = i$.next();
				Node attr = (Node) obj;
				result.add(attr.valueOf(attrName));
			}
		}
		return result;
	}

	/**
	 * 通过xpath解析xml字符串
	 *
	 * @param xmlContent
	 * @param xpath
	 * @return
	 * @throws DocumentException
	 */
	public static List<String> getNodeXmlList(String xmlContent, String xpath, String filterName)
			throws DocumentException {
		Document doc = DocumentHelper.parseText(xmlContent);
		List<String> result = new ArrayList<>();
		if (null == doc) {
			return result;
		}
		List<?> elements = doc.selectNodes(xpath);
		if (CollectionUtils.isEmpty(elements)) {
			return result;
		}

		for (Object obj : elements) {
			Element element = (Element) obj;
			List<?> itElements = element.elements();

			if (CollectionUtils.isEmpty(itElements)) {
				continue;
			}

			for (Object itObj : itElements) {
				Element itElement = (Element) itObj;
				String elementXml = itElement.asXML();
				if (StringUtils.isBlank(filterName)) {
					filterName = itElement.getName().toLowerCase();
				}

				if (StringUtils.isNotBlank(elementXml)
						&& filterName.toLowerCase().equals(itElement.getName().toLowerCase())) {
					result.add(elementXml);
				}
			}

		}
		return result;
	}

	/**
	 * 获取xml xpath 第一个节点 的text
	 *
	 * @param xmlContent
	 * @param xpath
	 * @return
	 * @throws DocumentException
	 */
	public static String getSingleNodeText(String xmlContent, String xpath) throws DocumentException {
		Document doc = DocumentHelper.parseText(xmlContent);
		if (null == doc) {
			return "";
		}
		List<?> elements = doc.selectNodes(xpath);
		if (CollectionUtils.isEmpty(elements)) {
			return "";
		}
		Element element = (Element) elements.get(0);
		return element.getText();
	}

	/**
	 * 转换xml结果集合，返回需要转换的字段list集合
	 *
	 * @param xmlResultList
	 * @param convertKeys
	 * @return
	 */
	public static List<Map<String, String>> convertXmlResultMap(List<Map<String, String>> xmlResultList,
			List<String> convertKeys) {
		List<Map<String, String>> convertResultList = new ArrayList<>();
		for (Map<String, String> map : xmlResultList) {
			Map<String, String> item = new HashMap<>();
			for (String key : convertKeys) {
				item.put(key, MapUtils.getString(map, key.toLowerCase()));
			}
			convertResultList.add(item);
		}
		return convertResultList;
	}

}
