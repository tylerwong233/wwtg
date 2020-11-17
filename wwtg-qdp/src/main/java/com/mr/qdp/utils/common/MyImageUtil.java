package com.mr.qdp.utils.common;

import org.apache.commons.lang.StringUtils;

public class MyImageUtil extends StringUtils {

	public static final String PROTOCOL = "http://";

	// 139.224.58.223
	// localhost
	public static final String IP = "localhost";

	public static final String PORT = "81";

	// 获取静态服务器路径
	public static String getStaticPath(String path) {
		// <p><img
		// src="/qdp/ueditorupload/image/20161028/77091477653835882.png"/></p>
		// http://localhost:81/20161028/74271477654109439.png

		// http://localhost:81/20161102/92261478055056454.png" title="albion.png
		path = StringUtils.substringBetween(path, "ueditorupload/image", "\"/></p>");
		if (path.contains("title=\"")) {
			path = StringUtils.substringBefore(path, "\" title=\"");
		}
		return PROTOCOL + IP + ":" + PORT + path;
	}

	// 获取UEDITOR路径
	public static String getUEditorPath(String path) {
		// http://localhost:81/20161028/74271477654109439.png
		// <p><img
		// src="/qdp/ueditorupload/image/20161028/77091477653835882.png"/></p>

		path = StringUtils.substringAfter(path, "localhost:81");
		path = "<p><img src=\"/qdp/ueditorupload/image" + path + "\"/></p>";
		return path;
	}
}
