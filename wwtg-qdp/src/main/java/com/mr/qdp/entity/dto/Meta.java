package com.mr.qdp.entity.dto;

import java.util.List;

import com.mr.qdp.entity.Domain;

public class Meta {

	// 包名
	String packagePrefix;
	// 包名全
	String packageFull;
	// 公司名
	String company;

	// R查询条件?
	List<Domain> searchConditionList;
	// R查询结果?
	List<Domain> searchResultList;
	// R编辑展现?
	List<Domain> editableList;
	// 批量插入sql
	List<Domain> fullList;
	// R必填字段?
	List<Domain> requiredList;
	// R联合唯一?
	List<Domain> uniqueValueList;
	// R导出?
	List<Domain> importedList;

	// 表名
	String tableName;
	String domainLabel;
	String clazz;
	// 菜单父节点
	String parentMenuCode;

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getParentMenuCode() {
		return parentMenuCode;
	}

	public void setParentMenuCode(String parentMenuCode) {
		this.parentMenuCode = parentMenuCode;
	}

	public void setUniqueValueList(List<Domain> uniqueValueList) {
		this.uniqueValueList = uniqueValueList;
	}

	public List<Domain> getUniqueValueList() {
		return uniqueValueList;
	}

	public List<Domain> getRequiredList() {
		return requiredList;
	}

	public void setRequiredList(List<Domain> requiredList) {
		this.requiredList = requiredList;
	}

	public String getDomainLabel() {
		return domainLabel;
	}

	public void setDomainLabel(String domainLabel) {
		this.domainLabel = domainLabel;
	}

	public List<Domain> getFullList() {
		return fullList;
	}

	public void setFullList(List<Domain> fullList) {
		this.fullList = fullList;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;

	}

	public List<Domain> getSearchConditionList() {
		return searchConditionList;
	}

	public void setSearchConditionList(List<Domain> searchConditionList) {
		this.searchConditionList = searchConditionList;
	}

	public List<Domain> getSearchResultList() {
		return searchResultList;
	}

	public void setSearchResultList(List<Domain> searchResultList) {
		this.searchResultList = searchResultList;
	}

	public List<Domain> getEditableList() {
		return editableList;
	}

	public void setEditableList(List<Domain> editableList) {
		this.editableList = editableList;
	}

	public List<Domain> getImportedList() {
		return importedList;
	}

	public void setImportedList(List<Domain> importedList) {
		this.importedList = importedList;
	}

	public String getPackagePrefix() {
		return packagePrefix;
	}

	public void setPackagePrefix(String packagePrefix) {
		this.packagePrefix = packagePrefix;
	}

	public String getPackageFull() {
		return packageFull;
	}

	public void setPackageFull(String packageFull) {
		this.packageFull = packageFull;
	}

}
