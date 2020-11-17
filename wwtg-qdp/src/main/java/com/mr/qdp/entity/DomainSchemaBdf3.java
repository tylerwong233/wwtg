package com.mr.qdp.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.stereotype.Repository;

import com.alibaba.druid.sql.SQLUtils;
import com.mr.qdp.utils.common.MyStringUtil;

/**
 * 领域模型定义
 */
@Entity
@Table(name = "BIZ_DOMAIN_SCHEMA_BDF3")
@GenericGenerator(name = "uuidGenerator", strategy = "uuid")
@Repository
public class DomainSchemaBdf3 {
	private String id;
	// 项目ID
	private String projectId;
	// 模型英文名称
	private String domainName;
	// 模型中文名称
	private String domainLabel;
	// 描述
	private String description;
	// 初始化SQL
	private String initSql;
	// 菜单SQL
	private String menuSql;
	// genEntity
	private String genEntity;
	// genService
	private String genService;
	// genController
	private String genController;
	// genWeb
	private String genWeb;
	// genImporter
	private String genImporter;
	// genImporterVo
	private String genImporterVo;
	// 创建日期
	private Date createDate;
	// 创建人
	private String creater;
	// 更新日期
	private Date updateDate;
	// 更新人
	private String updater;

	public static Map<String, String> getFieldMap() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("projectId", "项目ID");
		map.put("domainName", "模型英文名称");
		map.put("domainLabel", "模型中文名称");
		map.put("description", "描述");
		map.put("initSql", "初始化SQL");
		map.put("menuSql", "菜单SQL");
		map.put("genEntity", "genEntity");
		map.put("genService", "genService");
		map.put("genController", "genController");
		map.put("genWeb", "genWeb");
		return map;
	}

	public static final int COLUMN_NUM = 10;

	public static List<String> getTableFieldList() {
		List<String> tableFieldList = new ArrayList<String>();
		tableFieldList.add("projectId");
		tableFieldList.add("domainName");
		tableFieldList.add("domainLabel");
		tableFieldList.add("description");
		tableFieldList.add("initSql");
		tableFieldList.add("menuSql");
		tableFieldList.add("genEntity");
		tableFieldList.add("genService");
		tableFieldList.add("genController");
		tableFieldList.add("genWeb");
		return tableFieldList;
	}

	public static final int EXPORT_FIELD_NUM = 9;

	public static List<String> getHeaderNameList() {
		List<String> headerList = new ArrayList<String>();
		headerList.add("模型英文名称");
		headerList.add("模型中文名称");
		headerList.add("描述");
		headerList.add("初始化SQL");
		headerList.add("菜单SQL");
		headerList.add("genEntity");
		headerList.add("genService");
		headerList.add("genController");
		headerList.add("genWeb");
		return headerList;
	}

	// 根据enum值返回对应的属性名称;
	public static String getPropertyNameByEnum(int enumValue) {
		switch (enumValue) {
		case 1:
			return "domainName";
		case 2:
			return "domainLabel";
		case 3:
			return "description";
		case 4:
			return "initSql";
		case 5:
			return "menuSql";
		case 6:
			return "genEntity";
		case 7:
			return "genService";
		case 8:
			return "genController";
		case 9:
			return "genWeb";
		default:
			return "";
		}
	};

	// 根据enum值返回对应的属性类型;
	public static String getPropertyTypeByEnum(int enumValue) {
		switch (enumValue) {
		case 1:
			return "String";
		case 2:
			return "String";
		case 3:
			return "String";
		case 4:
			return "String";
		case 5:
			return "String";
		case 6:
			return "String";
		case 7:
			return "String";
		case 8:
			return "String";
		case 9:
			return "String";
		default:
			return "";
		}
	}

	@Id
	@GeneratedValue(generator = "uuidGenerator")
	@Column(name = "id", unique = true)
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "PROJECT_ID")
	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	@Column(name = "DOMAIN_NAME")
	public String getDomainName() {
		return domainName;
	}

	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}

	@Column(name = "DOMAIN_LABEL")
	public String getDomainLabel() {
		return domainLabel;
	}

	public void setDomainLabel(String domainLabel) {
		this.domainLabel = domainLabel;
	}

	@Column(name = "DESCRIPTION")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "INIT_SQL", columnDefinition = "TEXT")
	public String getInitSql() {
		if (StringUtils.isNotBlank(initSql)) {
			try {
				initSql = SQLUtils.formatMySql(initSql);
			} catch (Exception e) {
			}
		}
		return initSql;
	}

	public void setInitSql(String initSql) {
		this.initSql = initSql;
	}

	@Column(name = "MENU_SQL", columnDefinition = "TEXT")
	public String getMenuSql() {
		return menuSql;
	}

	public void setMenuSql(String menuSql) {
		this.menuSql = menuSql;
	}

	@Column(name = "GEN_ENTITY", columnDefinition = "TEXT")
	public String getGenEntity() {
		return genEntity;
	}

	public void setGenEntity(String genEntity) {
		this.genEntity = genEntity;
	}

	@Column(name = "GEN_SERVICE", columnDefinition = "TEXT")
	public String getGenService() {
		return genService;
	}

	public void setGenService(String genService) {
		this.genService = genService;
	}

	@Column(name = "GEN_CONTROLLER", columnDefinition = "TEXT")
	public String getGenController() {
		return genController;
	}

	public void setGenController(String genController) {
		this.genController = genController;
	}

	@Column(name = "GEN_WEB", columnDefinition = "TEXT")
	public String getGenWeb() {
//		if (StringUtils.isNotBlank(genWeb)) {
//			genWeb = MyStringUtil.formatXml(genWeb);
//		}
		return genWeb;
	}

	public void setGenWeb(String genWeb) {
		this.genWeb = genWeb;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_DATE")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Column(name = "CREATER")
	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPDATE_DATE")
	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Column(name = "UPDATER")
	public String getUpdater() {
		return updater;
	}

	public void setUpdater(String updater) {
		this.updater = updater;
	}
	@Column(name = "GEN_IMPORTER", columnDefinition = "TEXT")
	public String getGenImporter() {
		return genImporter;
	}

	public void setGenImporter(String genImporter) {
		this.genImporter = genImporter;
	}
	@Column(name = "GEN_IMPORTER_VO", columnDefinition = "TEXT")
	public String getGenImporterVo() {
		return genImporterVo;
	}

	public void setGenImporterVo(String genImporterVo) {
		this.genImporterVo = genImporterVo;
	}
}