package com.mr.qdp.service.bdf3;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.mr.qdp.utils.common.MyStringUtil;
import com.mr.qdp.utils.yml.ProjectConf;
import com.mr.qdp.entity.Domain;
import com.mr.qdp.entity.DomainSchemaBdf3;
import com.mr.qdp.entity.dto.Meta;

import freemarker.template.Template;

@Service
@Transactional
public class GenCodeService {
	private static final String TYPE = "rc";

	@Autowired
	private ProjectConf qdpProject;

	// 生成
	private void genCode() {

		genController();
		genImporter();
		genImporterVo();
		genService();
		genWeb();
		genEntity();
		genTableSql();
		genMenuSql();
	}

	// 代码生成参数
	String appName;
	String framework;
	String company;
	String packagePrefix;
	String tablePrfix;
	String workspace;

	// meta属性
	DomainSchemaBdf3 domainSchemaBdf3;
	String domainName;

	List<Domain> domainList;

	Meta meta;;

	// R查询条件?
	List<Domain> searchConditionList;
	// R查询结果?
	List<Domain> searchResultList;
	// R编辑展现?
	List<Domain> editableList;
	// R必填字段?
	List<Domain> requiredList;
	// R联合唯一?
	List<Domain> uniqueValueList;
	// R是否导入?
	List<Domain> importedList;

	public String genCode(DomainSchemaBdf3 domainSchemaBdf3, List<Domain> domainList) {
		appName = qdpProject.getAppName();
		framework = qdpProject.getFramework();
		packagePrefix = qdpProject.getPackagePrefix();
		company = qdpProject.getCompany();
		this.domainSchemaBdf3 = domainSchemaBdf3;
		this.domainList = domainList;
		this.domainName = domainSchemaBdf3.getDomainName();

		searchConditionList = new ArrayList<Domain>();
		for (Domain domain : domainList) {
			String check = domain.getSearchCondition();
			if (StringUtils.isNotBlank(check) && check.equalsIgnoreCase("y")) {
				searchConditionList.add(domain);
			}
		}
		searchResultList = new ArrayList<Domain>();
		for (Domain domain : domainList) {
			String check = domain.getSearchResult();
			if (StringUtils.isNotBlank(check) && check.equalsIgnoreCase("y")) {
				searchResultList.add(domain);
			}
		}
		editableList = new ArrayList<Domain>();
		for (Domain domain : domainList) {
			String check = domain.getEditable();
			if (StringUtils.isNotBlank(check) && check.equalsIgnoreCase("y")) {
				editableList.add(domain);
			}
		}
		requiredList = new ArrayList<Domain>();
		for (Domain domain : domainList) {
			String check = domain.getRequired();
			if (StringUtils.isNotBlank(check) && check.equalsIgnoreCase("y")) {
				requiredList.add(domain);
			}
		}
		uniqueValueList = new ArrayList<Domain>();
		for (Domain domain : domainList) {
			String check = domain.getUniqueValue();
			if (StringUtils.isNotBlank(check) && check.equalsIgnoreCase("y")) {
				uniqueValueList.add(domain);
			}
		}
		importedList = new ArrayList<Domain>();
		for (Domain domain : domainList) {
			String check = domain.getImported();
			if (StringUtils.isNotBlank(check) && check.equalsIgnoreCase("y")) {
				importedList.add(domain);
			}
		}
		System.out.println("meta...start");
		meta = new Meta();
		meta.setClazz(domainName);
		meta.setSearchConditionList(searchConditionList);
		meta.setSearchResultList(searchResultList);
		meta.setEditableList(editableList);
		meta.setFullList(domainList);
		meta.setRequiredList(requiredList);
		meta.setUniqueValueList(uniqueValueList);
		meta.setImportedList(importedList);

		meta.setTableName(MyStringUtil.fieldToColumn(domainName));
		meta.setDomainLabel(domainSchemaBdf3.getDomainLabel());
		meta.setPackagePrefix(packagePrefix);
		meta.setCompany(company);
		System.out.println("meta...done");
		// 创建代码
		genCode();
		return "执行成功";
	}

	private void genEntity() {
		System.out.println("genEntity...start");
		Template template = TemplateService.getTemplate("genEntity", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setGenEntity(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genEntity...done");
	}

	private void genController() {
		System.out.println("genController...start");
		Template template = TemplateService.getTemplate("genController", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setGenController(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genController...done");
	}

	private void genImporter() {
		System.out.println("genImporter...start");
		Template template = TemplateService.getTemplate("genImporter", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setGenImporter(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genImporter...done");
	}

	private void genImporterVo() {
		System.out.println("genImporterVo...start");
		Template template = TemplateService.getTemplate("genImporterVo", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setGenImporterVo(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genImporterVo...done");
	}

	private void genService() {
		System.out.println("genService...start");
		Template template = TemplateService.getTemplate("genService", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setGenService(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genService...done");
	}

	private void genTableSql() {
		System.out.println("genTableSql...start");
		Template template = TemplateService.getTemplate("genTableSql", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setInitSql(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genTableSql...done");
	}

	private void genWeb() {
		System.out.println("genWeb...start");
		Template template = TemplateService.getTemplate("genWeb", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setGenWeb(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genWeb...done");
	}

	private void genMenuSql() {
		System.out.println("genMenuSql...start");
		Template template = TemplateService.getTemplate("genMenuSql", TYPE);
		String data = TemplateService.processString(template, meta);
		domainSchemaBdf3.setMenuSql(data);
		JpaUtil.merge(domainSchemaBdf3);
		System.out.println("genMenuSql...done");
	}

}
