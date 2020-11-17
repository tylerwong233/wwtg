package com.mr.qdp.service;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.bstek.dorado.annotation.Expose;
import com.mr.qdp.utils.common.MyStringUtil;
import com.mr.qdp.utils.text.TranslateApi;
import com.mr.qdp.entity.Domain;
import com.mr.qdp.entity.DomainSchemaBdf3;

@Service
@Transactional
public class DomainService {

	@Expose
	public String getEnglishNameByLabel(Map<String, Object> parameter) {
		try {
			List<Domain> domainList = (List<Domain>) parameter.get("domainDataGrid");
			int i = 0;
			for (Domain domain : domainList) {
				i++;
				String newName = TranslateApi.translate(domain.getLabel());
				System.out.println(i + ":" + newName);
				// 转换为属性写法
				newName = MyStringUtil.formatFiled(newName);
				newName = StringUtils.remove(newName, "/");
				newName = StringUtils.remove(newName, "?");
				domain.setName(newName);
				JpaUtil.merge(domain);
			}
			return "执行成功";
		} catch (Exception e) {
			return e.getMessage();
		}
	}

	@Expose
	public String saveDomainDataGrid(Map<String, Object> parameter) throws Exception {
		List<Domain> domains = (List<Domain>) parameter.get("domainDataGrid");
		String domainSchemaId = (String) parameter.get("domainSchemaId");

		for (Domain domain : domains) {
			domain.setColumnName(MyStringUtil.fieldToColumn(domain.getName()));
			genLookup(domain);
			if (StringUtils.isBlank(domain.getColumnLength())) {
				domain.setColumnLength(null);
			}
			// 表注释
			String comment;
			String fromEnum = domain.getFromEnum();
			String enumStr = StringUtils.substringBetween(fromEnum, "(", ")");
			if (StringUtils.isNotBlank(enumStr)) {
				comment = domain.getLabel() + "(" + enumStr + ")";
			} else {
				comment = domain.getLabel();
			}
			// domain.setComment(comment);
			domain.setDomainSchemaId(domainSchemaId);
			// domain.setImportEnumString("eeeeee");
			if (null == domain.getId()) {
				JpaUtil.persist(domain);
			} else {
				JpaUtil.merge(domain);
			}

		}
		return "成功保存";
	}

	// 产生LOOKUP相关配置代码-@Excel
	private void genLookup(Domain domain) {
		StringBuilder sb = new StringBuilder();
		if (StringUtils.isNotBlank(domain.getFromEnum())) {
			// 解析static enum
			// lookupName(key:value|key:value) -> "男_1", "女_2"
			String fromEnum = domain.getFromEnum();
			String lookupName = StringUtils.substringBefore(fromEnum, "(");
			String lookupXmlTmp = StringUtils.substringBetween(fromEnum, "(", ")");

			if (StringUtils.isNotBlank(lookupXmlTmp)) {
				String[] lookupArray = StringUtils.split(lookupXmlTmp, "|");
				for (int i = 0; i < lookupArray.length; i++) {
					String key = StringUtils.substringBefore(lookupArray[i], ":");
					String value = StringUtils.substringAfter(lookupArray[i], ":");
					sb.append("\"").append(value).append("_").append(key).append("\",");
				}
			}
			domain.setLookupName(lookupName);
			String result = sb.toString();
			result = StringUtils.removeEnd(result, ",");
			domain.setComment(result);
		}

	}

	@Expose
	public String doClassToDomain(Map<String, Object> parameter) {
		String classText = (String) parameter.get("classText");
		Map<String, String> map = new HashMap<String, String>();
		StringBuffer domainFieldSb = new StringBuffer();
		StringBuffer domainTypeSb = new StringBuffer();
		StringBuffer domainLabelSb = new StringBuffer();

		String[] text = StringUtils.split(classText, "\r\n");
		int size = text.length;
		for (int i = 0; i < size; i++) {
			String str = text[i];
			if (str.contains("//")) {
				String domainLabel = StringUtils.substringAfter(str, "//").trim();
				domainLabelSb.append(domainLabel).append("\r\n");
			}
			if (str.contains("private")) {
				String domainType = StringUtils.substringBetween(str, "private ", " ").trim();
				switch (domainType) {
				case "int":
					domainType = "Integer";
					break;
				case "long":
					domainType = "Long";
					break;
				default:
					break;
				}
				domainTypeSb.append(domainType).append("\r\n");
				String domainField = StringUtils.substringAfter(str, "private ");
				domainField = StringUtils.substringBetween(domainField, " ", ";").trim();
				domainFieldSb.append(domainField).append("\r\n");
			}

		}
		String domainField = StringUtils.removeEnd(domainFieldSb.toString(), "\r\n");
		String domainType = StringUtils.removeEnd(domainTypeSb.toString(), "\r\n");
		String domainLabel = StringUtils.removeEnd(domainLabelSb.toString(), "\r\n");
		map.put("domainField", domainField);
		map.put("domainType", domainType);
		map.put("domainLabel", domainLabel);
		String json = JSON.toJSONString(map);
		return json;

	}

	@Expose
	public String doSqlToDomain(Map<String, Object> parameter) {
		String sqlText = (String) parameter.get("sqlText");
		sqlText = StringUtils.replace(sqlText, "-- ----------------------------", "^^^^^");
		sqlText = StringUtils.remove(sqlText, "DEFAULT '0000-00-00 00:00:00'");
		String fromProjectId = (String) parameter.get("fromProjectId");
		String toProjectId = (String) parameter.get("toProjectId"); 
		String[] tableArray = StringUtils.split(sqlText, "^^^^^");
		for (int i = 0; i < tableArray.length; i++) {
			String tableStr = tableArray[i];
			if (StringUtils.isNotBlank(tableStr) && !tableStr.contains("-")
					&& !tableStr.contains("Table structure for")) {
				String tableName = StringUtils.substringBetween(tableStr, "DROP TABLE IF EXISTS `", "`;");
				String tableComment = StringUtils.substringBetween(tableStr, "COMMENT='", "';");
				DomainSchemaBdf3 domainSchema = new DomainSchemaBdf3();
				domainSchema.setProjectId(toProjectId);
				String domainName = MyStringUtil.columnTofield(tableName);
				domainName = MyStringUtil.firstUpper(domainName);
				if (domainName.startsWith("Biz")) {
					domainName = StringUtils.substringAfter(domainName, "Biz");
				}

				domainSchema.setDomainName(domainName);
				if (StringUtils.isNotBlank(tableComment)) {
					domainSchema.setDomainLabel(tableComment);
				} else {
					domainSchema.setDomainLabel(domainName);
				}
				JpaUtil.save(domainSchema);
				System.out.println(domainSchema.getDomainName() + "|" + domainSchema.getDomainLabel());
				String fieldFullStr = StringUtils.substringBetween(tableStr, "CREATE TABLE `" + tableName + "` (",
						") ENGINE=InnoDB");
				// 转换注释中的,
				fieldFullStr = StringUtils.replace(fieldFullStr, "COMMENT ',", "%");
				fieldFullStr = StringUtils.replace(fieldFullStr, "NULL,", "#");
				fieldFullStr = StringUtils.replace(fieldFullStr, "',", "&");
				fieldFullStr = StringUtils.replace(fieldFullStr, ",", "|");
				fieldFullStr = StringUtils.replace(fieldFullStr, "&", "',");
				fieldFullStr = StringUtils.replace(fieldFullStr, "%", "COMMENT ',");
				fieldFullStr = StringUtils.replace(fieldFullStr, "#", "NULL,");
				String[] fieldArray = StringUtils.split(fieldFullStr, ",");
				for (int j = 0; j < fieldArray.length; j++) {
					String fieldStr = fieldArray[j];
					if (StringUtils.isNotBlank(fieldStr)) {
						if (fieldStr.trim().startsWith("`ID`") || fieldStr.trim().startsWith("`" + tableName + "_ID`")
								|| !fieldStr.trim().startsWith("`")) {
							continue;
						}
						String fieldColumnName = StringUtils.substringBetween(fieldStr, "`", "`");
						String fieldName = MyStringUtil.columnTofield(fieldColumnName);
						String fieldColumnType = StringUtils.substringBetween(fieldStr, "`" + fieldColumnName + "` ",
								" ");
						String length = "";
						if (fieldColumnType.contains("(")) {
							length = StringUtils.substringBetween(fieldColumnType, "(", ")");
						}
						String fieldType = "String";
						if (StringUtils.containsIgnoreCase(fieldColumnType, "int")
								|| (StringUtils.containsIgnoreCase(fieldColumnType, "char")
										&& !StringUtils.containsIgnoreCase(fieldColumnType, "archar"))) {
							fieldType = "Integer";
						}
						if (StringUtils.containsIgnoreCase(fieldColumnType, "date")) {
							fieldType = "Date";
						}
						String fieldColumnComment = "";
						try {
							fieldColumnComment = StringUtils.substringBetween(fieldStr, "COMMENT '", "'");
						} catch (Exception e) {
						}
						if (!("id".equals(fieldName) || "createDate".equals(fieldName) || "creater".equals(fieldName)
								|| "updateDate".equals(fieldName) || "updater".equals(fieldName))) {
							Domain domain = new Domain();
							domain.setName(fieldName);
							domain.setDataType(fieldType);
							domain.setLabel(fieldColumnComment);
							domain.setDomainSchemaId(domainSchema.getId());
							domain.setSearchCondition("y");
							domain.setSearchResult("y");
							domain.setEditable("y");
							domain.setImported("y");
							domain.setFieldOrder(j);
							domain.setColumnLength(length);
							JpaUtil.save(domain);
						}

					}

				}

			} else {
				continue;
			}
		}
		return "成功转换";

	}

	/**
	 * 实体转换为Domain
	 * 
	 * @param parameter
	 * @return
	 */
	@Expose
	public List<Domain> convertEntityToDomainList(String className) {
		List<Domain> domainList = new ArrayList<>();
		try {
			Class<?> entity = Class.forName(className);
			Field[] fields = entity.getDeclaredFields();
			for (int i = 0; i < fields.length; i++) {
				Domain domain = new Domain();
				String name = fields[i].getName();
				String dataType = fields[i].getGenericType().toString();
				if (dataType.contains(".")) {
					dataType = StringUtils.substringAfterLast(dataType, ".");
				}
				// System.out.println(dataType + ":" + name + "___" +
				// BeanUtils.getProperty(entity, name));
				if ("COLUMN_NUM".equals(name) || "EXPORT_FIELD_NUM".equals(name) || "serialVersionUID".equals(name)) {
					continue;
				}
				domain.setName(name);
				domain.setDataType(dataType);
				domainList.add(domain);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return domainList;
	}

}