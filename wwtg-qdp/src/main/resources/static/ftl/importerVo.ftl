package com.${meta.company}.${meta.packagePrefix}.importer.vo;

import com.bstek.dorado.annotation.PropertyDef;
import cn.afterturn.easypoi.excel.annotation.Excel;

/**
 * ${meta.domainLabel}
 */ 
public class ${meta.clazz?cap_first}Vo {
  
                            
<#list meta.importedList?chunk(1) as row> 
	<#list row as field>
   
	@Excel(name = "${field.label}", isImportField = "true")
    @PropertyDef(label = "${field.label}") 
    private String ${field.name};
		private String ${field.name}Tip; 
</#list>
</#list>  
  
<#list meta.importedList?chunk(1) as row> 
	<#list row as field>
                   
		 	public String get${field.name?cap_first}() {
		return ${field.name};
	}

	public void set${field.name?cap_first}(String ${field.name}) {
		this.${field.name} = ${field.name};
	}
	
	public String get${field.name?cap_first}Tip() {
		return ${field.name}Tip;
	}

	public void set${field.name?cap_first}Tip(String ${field.name}) {
		this.${field.name}Tip = ${field.name}Tip;
	}
	  
</#list>
</#list>  
   
}