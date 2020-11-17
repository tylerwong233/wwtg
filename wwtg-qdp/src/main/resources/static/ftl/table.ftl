<@compress>
DROP TABLE IF EXISTS BIZ_${meta.tableName};

CREATE TABLE BIZ_${meta.tableName} (
	ID_ VARCHAR (32) NOT NULL,
	<#list meta.fullList?chunk(1) as row> 
	<#list row as field>
	<#if field.dataType =='String'>
	${field.columnName}_ VARCHAR (
	<#if field.columnLength?exists>
	${field.columnLength}
	<#else>
	16
	</#if>
	
	) COMMENT '${field.label}',
</#if>  
<#if field.dataType =='Integer'>
	${field.columnName}_ INTEGER DEFAULT 0 COMMENT '${field.label}',
</#if>
<#if field.dataType =='Long'>
	${field.columnName}_ BIGINT COMMENT '${field.label}',
</#if>	
<#if field.dataType =='Date'>
	${field.columnName}_ DATE COMMENT '${field.label}',
</#if>	
<#if field.dataType =='Text'>
	${field.columnName}_ TEXT COMMENT '${field.label}',
</#if>
<#if field.dataType =='BigDecimal'>
	${field.columnName}_ DECIMAL COMMENT '${field.label}',
</#if>
  <#if field.dataType =='boolean'>
	${field.columnName}_ bit COMMENT '${field.label}',
</#if>
</#list>
</#list>
	CREATED_DATE_ DATETIME comment '创建日期', 
	CREATOR_ VARCHAR(32) comment '创建人', 
	UPDATE_DATE_ DATETIME comment '修改日期', 
	MODIFIER_ VARCHAR(32) comment '修改人', 
	PRIMARY KEY (ID_)
) COMMENT = '${meta.domainLabel}';

</@compress>
