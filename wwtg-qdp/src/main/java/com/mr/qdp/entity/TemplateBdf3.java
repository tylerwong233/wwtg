package com.mr.qdp.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * Bdf3模板
 */
@Entity
@Table(name = "BIZ_BDF3_TEMPLATE")
@GenericGenerator(name = "uuidGenerator", strategy = "uuid")
public class TemplateBdf3 {
	private String id;
	// 初始化SQL
	private String initSql;
	// 菜单SQL
	private String menuSql;
	// genEntity
	private String entity;
	// genService
	private String service;
	// genController
	private String controller;
	// genImporter
	private String importer;
	// genImporterVo
	private String importerVo;
	// genWeb
	private String view;
	// 创建日期
	private Date createDate;
	// 创建人
	private String creater;
	// 更新日期
	private Date updateDate;
	// 更新人
	private String updater;
	private String query;

	// 根据enum值返回对应的属性名称;
	public static String getPropertyNameByEnum(int enumValue) {
		switch (enumValue) {
		default:
			return "";
		}
	};

	// 根据enum值返回对应的属性类型;
	public static String getPropertyTypeByEnum(int enumValue) {
		switch (enumValue) {
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

	@Column(name = "INIT_SQL")
	public String getInitSql() {
		return initSql;
	}

	public void setInitSql(String initSql) {
		this.initSql = initSql;
	}

	@Column(name = "MENU_SQL")
	public String getMenuSql() {
		return menuSql;
	}

	public void setMenuSql(String menuSql) {
		this.menuSql = menuSql;
	}

	@Column(name = "ENTITY")
	public String getEntity() {
		return entity;
	}

	public void setEntity(String entity) {
		this.entity = entity;
	}

	@Column(name = "SERVICE")
	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	@Column(name = "IMPORTER")
	public String getImporter() {
		return importer;
	}

	public void setImporter(String importer) {
		this.importer = importer;
	}
	@Column(name = "IMPORTER_VO")
	public String getImporterVo() {
		return importerVo;
	}

	public void setImporterVo(String importerVo) {
		this.importerVo = importerVo;
	}
	@Column(name = "CONTROLLER")
	public String getController() {
		return controller;
	}

	public void setController(String controller) {
		this.controller = controller;
	}

	@Column(name = "VIEW")
	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
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

	@Column(name = "QUERY")
	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}
}