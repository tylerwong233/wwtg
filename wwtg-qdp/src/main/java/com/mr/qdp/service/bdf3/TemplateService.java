package com.mr.qdp.service.bdf3;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.mr.qdp.entity.TemplateBdf3;
import com.mr.qdp.entity.dto.Meta;

import freemarker.cache.StringTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;

@Service("templateBdf3Service")
public class TemplateService {
	static Configuration freeMarkerCfg = new Configuration();

	@Transactional
	public static Template getTemplate(String method, String operatorSystem) {
		List<TemplateBdf3> templateBdf3List = JpaUtil.findAll(TemplateBdf3.class);
		TemplateBdf3 templateBdf3 = templateBdf3List.get(0);
		StringTemplateLoader stringLoader = new StringTemplateLoader();
		String myTemplate = "templateBdf3";
		String templateContent = "";

		freeMarkerCfg.setObjectWrapper(new DefaultObjectWrapper());
		freeMarkerCfg.setDefaultEncoding("UTF-8");
		Template template = null;
		try {

			switch (method) {
			case "genEntity":
				templateContent = templateBdf3.getEntity();
				break;
			case "genService":
				templateContent = templateBdf3.getService();
				break;
			case "genWeb":
				templateContent = templateBdf3.getView();
				break;
			case "genController":
				templateContent = templateBdf3.getController();
				break;
			case "genImporter":
				templateContent = templateBdf3.getImporter();
				break;
			case "genImporterVo":
				templateContent = templateBdf3.getImporterVo();
				break;
			case "genMenuSql":
				templateContent = templateBdf3.getMenuSql();
				break;
			case "genTableSql":
				templateContent = templateBdf3.getInitSql();
				break;

			default:
				break;
			}
			stringLoader.putTemplate(myTemplate, templateContent);
			freeMarkerCfg.setTemplateLoader(stringLoader);
			template = freeMarkerCfg.getTemplate(myTemplate);
			return template;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	// 根据ftl生成内容
	public static String process(Template template, Meta meta, String filePath, String fileName) {
		try {
			Map<String, Meta> root = new HashMap<String, Meta>();
			root.put("meta", meta);
			File f = new File(filePath);
			if (!f.exists()) {
				f.mkdirs();
			}
			f = new File(filePath + "\\" + fileName);

			System.out.println("Generate[" + fileName + "]");
			System.out.println("At [" + filePath + "]");
			Writer writer = new OutputStreamWriter(new FileOutputStream(f), "UTF-8");
			template.process(root, writer);
			writer.flush();
			return writer.toString();
		} catch (IOException e) {
			e.printStackTrace();

		} catch (TemplateException e) {
			e.printStackTrace();
		}
		return "";
	}

	// 根据ftl生成内容-不写文件
	public static String processString(Template template, Meta meta) {
		try {
			Map<String, Meta> root = new HashMap<String, Meta>();
			root.put("meta", meta);
			StringWriter writer = new StringWriter();
			template.process(root, writer);
			writer.flush();
			return writer.toString();
		} catch (IOException e) {
			e.printStackTrace();

		} catch (TemplateException e) {
			e.printStackTrace();
		}
		return "";
	}

}
