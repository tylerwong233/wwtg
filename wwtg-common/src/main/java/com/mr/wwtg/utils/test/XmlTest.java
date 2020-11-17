package com.mr.wwtg.utils.test;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.dom4j.DocumentException;

import com.alibaba.fastjson.JSON;
import com.mr.wwtg.utils.common.XMLUtil;

public class XmlTest {

	public static void main(String[] args) {
		try {
			String a = FileUtils.readFileToString(new File("d:/help.txt"));

			List< String> aa=XMLUtil.getNodeAttrList(a, "/content/p/img[@title]");

			// 替换"我要举报"电话超链接
//			try {
//				// 组装为标准XML
//				String startXmlTag = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><content>";
//				String endXmlTag = "</content>";
//				contentStr = startXmlTag + contentStr + endXmlTag;
//				// 获取图片标签行
//				List<String> imgStrList = XMLUtil.getNodeXmlList(contentStr, "/content/p", "img");
//				// 被替换元素列表
//				String[] searchList = new String[imgStrList.size()];
//				// 替换元素值列表
//				String[] replacementList = new String[imgStrList.size()];
//				for (int i = 0; i < imgStrList.size(); i++) {
//					String imgStr = imgStrList.get(i);
//					//新增
//					if (imgStr.contains("title=\"")) {
//						// 获取title(举报电话)
//						String title = StringUtils.substringBetween(imgStr, "title=\"", "\" ");
//						// 包<a>
//						String startTag = "<a href=\"tel:" + title + "\">";
//						String newImgStr = startTag + imgStr + "</a>";
//						searchList[i] = imgStr;
//						replacementList[i] = newImgStr;
//					}
//				}
//				//替换
//				contentStr = StringUtils.replaceEach(contentStr, searchList, replacementList);
//				//去除XML标签
//				contentStr = StringUtils.remove(contentStr, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><content>");
//				contentStr = StringUtils.remove(contentStr, "</content>");
//				LOGGER.info("NoticeService#replaceContentUrl contentStr" + contentStr);

			System.out.println(JSON.toJSONString(aa));

		} catch (IOException | DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
