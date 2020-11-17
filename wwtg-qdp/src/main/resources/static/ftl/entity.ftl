package com.${meta.company}.${meta.packagePrefix}.entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.Type;

import com.bstek.bdf3.dorado.jpa.annotation.Generator;
import com.bstek.bdf3.dorado.jpa.policy.impl.CreatedDatePolicy;
import com.bstek.bdf3.dorado.jpa.policy.impl.UpdatedDatePolicy;
import com.bstek.bdf3.security.ui.policy.CreatorPolicy;
import com.bstek.bdf3.security.ui.policy.ModifierPolicy;
import com.bstek.dorado.annotation.PropertyDef;
import com.${meta.company}.${meta.packagePrefix}.policy.common.UuidPolicy;

/**
 * ${meta.domainLabel}
 */
@Entity
@Table(name = "BIZ_${meta.tableName}")
public class ${meta.clazz?cap_first} {
 
@Id
	@Column(name = "ID_", length = 64)
	@PropertyDef(label = "ID")
	@Generator(policy = UuidPolicy.class)
	private String id;

	
                            
<#list meta.fullList?chunk(1) as row> 
	<#list row as field>
 
    @PropertyDef(label = "${field.label}")
	<#if field.dataType =="Integer">
         @Column(name = "${field.columnName}_", length = <#if field.columnLength?exists>${field.columnLength}<#else>11</#if>)
		private Integer ${field.name};
		<#elseif field.dataType =="Long">
          @Column(name = "${field.columnName}_", length = <#if field.columnLength?exists>${field.columnLength}<#else>19</#if>)
		private Long ${field.name}; 
		<#elseif field.dataType =="Text">
		@Type(type = "text")
         @Column(name = "${field.columnName}_")
		private String ${field.name}; 
        <#elseif field.dataType =="Date">
         @Temporal(TemporalType.TIMESTAMP)
          @Column(name = "${field.columnName}_")
		private Date ${field.name}; 
         <#elseif field.dataType =="boolean">
          @Column(name = "${field.columnName}_")
		private boolean ${field.name};
		<#else>
         @Column(name = "${field.columnName}_", length = <#if field.columnLength?exists>${field.columnLength}<#else>16</#if>)
		private ${field.dataType} ${field.name};
		</#if> 
</#list>
</#list>  

 @PropertyDef(label = "创建日期")
	@Column(name = "CREATED_DATE_")
	@Temporal(TemporalType.TIMESTAMP)
	@Generator(policy = CreatedDatePolicy.class)
	private Date createdDate;

	@Column(name = "CREATOR_")
	@PropertyDef(label = "创建人")
	@Generator(policy = CreatorPolicy.class)
	private String creator;

	@Column(name = "UPDATE_DATE_")
	@PropertyDef(label = "修改日期")
	@Temporal(TemporalType.TIMESTAMP)
	@Generator(policy = UpdatedDatePolicy.class)
	private Date updateDate;

	@Column(name = "MODIFIER_")
	@PropertyDef(label = "修改人")
	@Generator(policy = ModifierPolicy.class)
	private String modifier;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	
<#list meta.fullList?chunk(1) as row> 
	<#list row as field> 
		  
         <#if field.dataType =="boolean">
          public boolean is${field.name?cap_first}() {
		return ${field.name};
	}

	public void set${field.name?cap_first}(boolean ${field.name}) {
		this.${field.name} = ${field.name};
	}
	<#elseif field.dataType =="Text">
		  public String is${field.name?cap_first}() {
		return ${field.name};
	}

	public void set${field.name?cap_first}(String ${field.name}) {
		this.${field.name} = ${field.name};
	}
		<#else>
          public ${field.dataType} get${field.name?cap_first}() {
		return ${field.name};
	}

	public void set${field.name?cap_first}(${field.dataType} ${field.name}) {
		this.${field.name} = ${field.name};
	} 
		</#if> 
		
	  
</#list>
</#list>  
 
public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getModifier() {
		return modifier;
	}

	public void setModifier(String modifier) {
		this.modifier = modifier;
	}
	 
	
}