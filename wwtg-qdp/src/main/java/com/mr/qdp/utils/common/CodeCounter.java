package com.mr.qdp.utils.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CodeCounter {
	private static final Logger logger = LoggerFactory.getLogger(CodeCounter.class);
	private static Integer code = 0;
	private static Integer codeComments = 0;
	private static Integer codeBlank = 0;

	public static void main(String[] args) {
		// File file = new
		// File("H:\\hdz_dev\\workspace\\qdp\\qdp_admin_new\\javasrc\\web\\com\\sun\\qdp\\view");
		// File file = new
		// File("H:\\hdz_dev\\workspace\\qdp\\qdp_admin_new\\javasrc\\service\\com\\sun\\qdp\\service");
		File file = new File(
				"H:\\hdz_dev\\workspace\\qdp\\qdp_admin_new\\javasrc\\entity\\com\\sun\\qdp\\entity");

		factFiles(file);
		System.out.println("代码行数" + code);
		System.out.println("空白行数" + codeBlank);
		System.out.println("注释行数" + codeComments);
	}

	public static void factFiles(File file) {
		BufferedReader br = null;
		String s = null;

		if (file.isDirectory()) {
			File[] files = file.listFiles();
			for (File f : files) {
				factFiles(f);
			}
		} else {
			try {
				br = new BufferedReader(new FileReader(file));
				boolean comm = false;
				while ((s = br.readLine()) != null) {
					if (s.startsWith("/*") && s.endsWith("*/")) {
						codeComments++;
					} else if (s.trim().startsWith("//")) {
						codeComments++;
					} else if (s.startsWith("/*") && !s.endsWith("*/")) {
						codeComments++;
						comm = true;
					} else if (!s.startsWith("/*") && s.endsWith("*/")) {
						codeComments++;
						comm = false;
					} else if (comm) {
						codeComments++;
					} else if (s.trim().length() < 1) {
						codeBlank++;
					} else {
						code++;
					}
				}
				br.close();
			} catch (FileNotFoundException e) {
				logger.info("Exception", e);
			} catch (IOException e) {
				logger.info("Exception", e);
			}
		}
	}
}
