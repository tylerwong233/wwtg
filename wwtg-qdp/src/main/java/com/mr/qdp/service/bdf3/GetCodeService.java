package com.mr.qdp.service.bdf3;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mr.qdp.utils.yml.MallDbConf;
import com.mr.qdp.utils.yml.ProjectConf;
import com.mr.qdp.entity.DomainSchemaBdf3;

@Service("getCodeBdf3Service")
public class GetCodeService {
	@Autowired
	private MallDbConf bizDbConf;
	@Autowired
	private ProjectConf projectConf;

	public void getCode(DomainSchemaBdf3 domainSchemaBdf3) throws IOException, SQLException {
		// DB
		String driverClassName = "com.mysql.jdbc.Driver";
		String url = bizDbConf.getUrl();
		String username = bizDbConf.getUsername();
		String password = bizDbConf.getPassword();
		String projectName = projectConf.getName();
		System.out.println("数据库信息:");
		System.out.println("driverClassName: " + driverClassName);
		System.out.println("url: " + url);
		System.out.println("username: " + username);
		System.out.println("password: " + password);
		System.out.println();
		System.out.println("其它信息:");
		String workspace = projectConf.getWorkspace();
		String packagePrfix = projectConf.getPackagePrefix();
		String company = projectConf.getCompany();
		System.out.println("workspace: " + workspace);

		// 生成代码路径

		File f;
		String content;
		String webDir;
		String serviceDir;
		String controllerDir;
		String importerDir;
		String importerVoDir;
		String finalDir;
		String entityDir;
		String domainSchemaBdf3Name = domainSchemaBdf3.getDomainName();
		System.out.println("开始读库...");
		System.out.println("获取代码开始...");

		// 文件路径
		finalDir = domainSchemaBdf3Name.toLowerCase() + "\\";
		entityDir = workspace + "\\" + projectName + "-common\\src\\main\\java\\com\\" + company + "\\" + packagePrfix
				+ "\\entity\\";
		webDir = workspace + "\\" + projectName + "-admin\\src\\main\\java\\com\\" + company + "\\" + packagePrfix
				+ "\\view\\";
		serviceDir = workspace + "\\" + projectName + "-admin\\src\\main\\java\\com\\" + company + "\\" + packagePrfix
				+ "\\service\\";
		controllerDir = workspace + "\\" + projectName + "-admin\\src\\main\\java\\com\\" + company + "\\"
				+ packagePrfix + "\\controller\\";
		importerDir = workspace + "\\" + projectName + "-admin\\src\\main\\java\\com\\" + company + "\\" + packagePrfix
				+ "\\importer\\";
		importerVoDir = workspace + "\\" + projectName + "-admin\\src\\main\\java\\com\\" + company + "\\"
				+ packagePrfix + "\\importer\\vo\\";
		content = domainSchemaBdf3.getGenWeb();
		if (StringUtils.isNotBlank(content)) {
			f = new File(webDir + domainSchemaBdf3Name + ".view.xml");
			FileUtils.writeStringToFile(f, content, "UTF-8");
			System.out.println(f.getAbsolutePath());
		}
		content = domainSchemaBdf3.getGenEntity();
		if (StringUtils.isNotBlank(content)) {
			f = new File(entityDir + domainSchemaBdf3Name + ".java");
			FileUtils.writeStringToFile(f, content, "UTF-8");
			System.out.println(f.getAbsolutePath());
		}
		content = domainSchemaBdf3.getGenService();
		if (StringUtils.isNotBlank(content)) {
			f = new File(serviceDir + domainSchemaBdf3Name + "Service.java");
			if (!f.exists()) {
				FileUtils.writeStringToFile(f, content, "UTF-8");
				System.out.println(f.getAbsolutePath());
			}
		}
		content = domainSchemaBdf3.getGenController();
		if (StringUtils.isNotBlank(content)) {
			f = new File(controllerDir + domainSchemaBdf3Name + "Controller.java");
			FileUtils.writeStringToFile(f, content, "UTF-8");
			System.out.println(f.getAbsolutePath());
		}
		content = domainSchemaBdf3.getGenImporter();
		if (StringUtils.isNotBlank(content)) {
			f = new File(importerDir + domainSchemaBdf3Name + "Importer.java");
			FileUtils.writeStringToFile(f, content, "UTF-8");
			System.out.println(f.getAbsolutePath());
		}
		content = domainSchemaBdf3.getGenImporterVo();
		if (StringUtils.isNotBlank(content)) {
			f = new File(importerVoDir + domainSchemaBdf3Name + "Vo.java");
			FileUtils.writeStringToFile(f, content, "UTF-8");
			System.out.println(f.getAbsolutePath());
		}
		System.out.println("获取代码结束...");

	}

}
