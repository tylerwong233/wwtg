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

import org.hibernate.annotations.GenericGenerator;
import org.springframework.stereotype.Repository;

/**
 * 领域模型
 */
@Entity
@Table(name = "BIZ_DOMAIN")
@GenericGenerator(name = "uuidGenerator", strategy = "uuid")
@Repository
public class Domain {
	private String id;
	// 领域模型定义ID
	private String domainSchemaId;
	// C属性名称
	private String name;
	// C类型
	private String dataType;
	// R标题/注释
	private String label;
	// R举例数据
	private String example;
	// R数据说明
	private String description;
	// R查询条件?
	private String searchCondition;
	// R查询结果?
	private String searchResult;
	// R编辑展现?
	private String editable;
	// R必填字段?
	private String required;
	// R是否导入?
	private String imported;
	// C枚举值
	private String fromEnum;
	// C关联表
	private String fromTable;
	// 特殊格式
	private String format;
	// 表中列名
	private String columnName;
	// 枚举名称
	private String lookupName;
	// 关联表相关实体
	private String dbEntityName;
	// 关联表相关实体KEY
	private String dbEntityKey;
	// 关联表相关实体显示属性
	private String dbEntityDisplayValue;
	// R表字段长度
	private String columnLength;
	// R联合唯一?
	private String uniqueValue;
	// C关联表保存ID
	private String extTableSaveId;
	// 排序
	private Integer fieldOrder;
	// 表注释
	private String comment;
	// 创建日期
	private Date createDate;
	// 创建人
	private String creater;
	// 更新日期
	private Date updateDate;
	// 更新人
	private String updater;
	// 领域模型定义IDTABLE
	private String refTableDomainSchemaId;
	// C枚举字符串
	private String importEnumString;

	public static Map<String, String> getFieldMap() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("domainSchemaId", "领域模型定义ID");
		map.put("name", "C属性名称");
		map.put("dataType", "C类型");
		map.put("label", "R标题/注释");
		map.put("example", "R举例数据");
		map.put("description", "R数据说明");
		map.put("searchCondition", "R查询条件?");
		map.put("searchResult", "R查询结果?");
		map.put("editable", "R编辑展现?");
		map.put("required", "R必填字段?");
		map.put("imported", "R是否导入?");
		map.put("fromEnum", "C枚举值");
		map.put("fromTable", "C关联表");
		map.put("format", "特殊格式");
		map.put("columnName", "表中列名");
		map.put("lookupName", "枚举名称");
		map.put("staticLookupXml", "静态LOOKUP_XML");
		map.put("dbLookupXml", "表LOOKUP_XML");
		map.put("dbEntityName", "关联表相关实体");
		map.put("dbEntityKey", "关联表相关实体KEY");
		map.put("dbEntityDisplayValue", "关联表相关实体显示属性");
		map.put("columnLength", "R表字段长度");
		map.put("uniqueValue", "R联合唯一?");
		map.put("extTableSaveId", "C关联表保存ID");
		map.put("fieldOrder", "排序");
		map.put("comment", "表注释");
		return map;
	}

	public static final int COLUMN_NUM = 26;

	public static List<String> getTableFieldList() {
		List<String> tableFieldList = new ArrayList<String>();
		tableFieldList.add("domainSchemaId");
		tableFieldList.add("name");
		tableFieldList.add("dataType");
		tableFieldList.add("label");
		tableFieldList.add("example");
		tableFieldList.add("description");
		tableFieldList.add("searchCondition");
		tableFieldList.add("searchResult");
		tableFieldList.add("editable");
		tableFieldList.add("required");
		tableFieldList.add("imported");
		tableFieldList.add("fromEnum");
		tableFieldList.add("fromTable");
		tableFieldList.add("format");
		tableFieldList.add("columnName");
		tableFieldList.add("lookupName");
		tableFieldList.add("staticLookupXml");
		tableFieldList.add("dbLookupXml");
		tableFieldList.add("dbEntityName");
		tableFieldList.add("dbEntityKey");
		tableFieldList.add("dbEntityDisplayValue");
		tableFieldList.add("columnLength");
		tableFieldList.add("uniqueValue");
		tableFieldList.add("extTableSaveId");
		tableFieldList.add("fieldOrder");
		tableFieldList.add("comment");
		return tableFieldList;
	}

	public static final int EXPORT_FIELD_NUM = 13;

	public static List<String> getHeaderNameList() {
		List<String> headerList = new ArrayList<String>();
		headerList.add("领域模型定义ID");
		headerList.add("C属性名称");
		headerList.add("C类型");
		headerList.add("R标题/注释");
		headerList.add("R查询条件?");
		headerList.add("R查询结果?");
		headerList.add("R编辑展现?");
		headerList.add("R必填字段?");
		headerList.add("R是否导入?");
		headerList.add("C枚举值");
		headerList.add("C关联表");
		headerList.add("R表字段长度");
		headerList.add("排序");
		return headerList;
	}

	// 根据enum值返回对应的属性名称;
	public static String getPropertyNameByEnum(int enumValue) {
		switch (enumValue) {
		case 1:
			return "name";
		case 2:
			return "dataType";
		case 3:
			return "label";
		case 4:
			return "searchCondition";
		case 5:
			return "searchResult";
		case 6:
			return "editable";
		case 7:
			return "required";
		case 8:
			return "imported";
		case 9:
			return "fromEnum";
		case 10:
			return "fromTable";
		case 11:
			return "columnLength";
		case 12:
			return "fieldOrder";
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
		case 10:
			return "String";
		case 11:
			return "String";
		case 12:
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

	@Column(name = "DOMAIN_SCHEMA_ID")
	public String getDomainSchemaId() {
		return domainSchemaId;
	}

	public void setDomainSchemaId(String domainSchemaId) {
		this.domainSchemaId = domainSchemaId;
	}

	@Column(name = "NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "DATA_TYPE")
	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	@Column(name = "LABEL")
	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	@Column(name = "EXAMPLE")
	public String getExample() {
		return example;
	}

	public void setExample(String example) {
		this.example = example;
	}

	@Column(name = "DESCRIPTION")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "SEARCH_CONDITION")
	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	@Column(name = "SEARCH_RESULT")
	public String getSearchResult() {
		return searchResult;
	}

	public void setSearchResult(String searchResult) {
		this.searchResult = searchResult;
	}

	@Column(name = "EDITABLE")
	public String getEditable() {
		return editable;
	}

	public void setEditable(String editable) {
		this.editable = editable;
	}

	@Column(name = "REQUIRED")
	public String getRequired() {
		return required;
	}

	public void setRequired(String required) {
		this.required = required;
	}

	@Column(name = "EXPORT")
	public String getImported() {
		return imported;
	}

	public void setImported(String imported) {
		this.imported = imported;
	}

	@Column(name = "FROM_ENUM")
	public String getFromEnum() {
		return fromEnum;
	}

	public void setFromEnum(String fromEnum) {
		this.fromEnum = fromEnum;
	}

	@Column(name = "FROM_TABLE")
	public String getFromTable() {
		return fromTable;
	}

	public void setFromTable(String fromTable) {
		this.fromTable = fromTable;
	}

	@Column(name = "FORMAT")
	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	@Column(name = "COLUMN_NAME")
	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	@Column(name = "LOOKUP_NAME")
	public String getLookupName() {
		return lookupName;
	}

	public void setLookupName(String lookupName) {
		this.lookupName = lookupName;
	}

	@Column(name = "DB_ENTITY_NAME")
	public String getDbEntityName() {
		return dbEntityName;
	}

	public void setDbEntityName(String dbEntityName) {
		this.dbEntityName = dbEntityName;
	}

	@Column(name = "DB_ENTITY_KEY")
	public String getDbEntityKey() {
		return dbEntityKey;
	}

	public void setDbEntityKey(String dbEntityKey) {
		this.dbEntityKey = dbEntityKey;
	}

	@Column(name = "DB_ENTITY_DISPLAY_VALUE")
	public String getDbEntityDisplayValue() {
		return dbEntityDisplayValue;
	}

	public void setDbEntityDisplayValue(String dbEntityDisplayValue) {
		this.dbEntityDisplayValue = dbEntityDisplayValue;
	}

	@Column(name = "COLUMN_LENGTH")
	public String getColumnLength() {
		return columnLength;
	}

	public void setColumnLength(String columnLength) {
		this.columnLength = columnLength;
	}

	@Column(name = "UNIQUE_VALUE")
	public String getUniqueValue() {
		return uniqueValue;
	}

	public void setUniqueValue(String uniqueValue) {
		this.uniqueValue = uniqueValue;
	}

	@Column(name = "EXT_TABLE_SAVE_ID")
	public String getExtTableSaveId() {
		return extTableSaveId;
	}

	public void setExtTableSaveId(String extTableSaveId) {
		this.extTableSaveId = extTableSaveId;
	}

	@Column(name = "FIELD_ORDER")
	public Integer getFieldOrder() {
		return fieldOrder;
	}

	public void setFieldOrder(Integer fieldOrder) {
		this.fieldOrder = fieldOrder;
	}

	@Column(name = "COMMENT")
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
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

	@Column(name = "IMPORT_ENUM_STRING")
	public String getImportEnumString() {
		return importEnumString;
	}

	public void setImportEnumString(String importEnumString) {
		this.importEnumString = importEnumString;
	}

}