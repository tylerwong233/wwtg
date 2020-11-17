 
package com.${meta.company}.${meta.packagePrefix}.importer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.stream.Collectors;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.bstek.bdf3.log.annotation.Log;
import com.bstek.bdf3.security.ContextUtils;
import com.bstek.dorado.uploader.UploadFile;
import com.bstek.dorado.uploader.annotation.FileResolver;
import com.${meta.company}.${meta.packagePrefix}.common.CommonService;
import com.${meta.company}.${meta.packagePrefix}.manage.EnumProvider;
import com.${meta.company}.${meta.packagePrefix}.utils.common.MyLog;
import com.${meta.company}.${meta.packagePrefix}.utils.excel.POIUtil;
import com.${meta.company}.${meta.packagePrefix}.entity.${meta.clazz};

import cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;
import cn.afterturn.easypoi.excel.entity.result.ExcelVerifyHandlerResult;
import cn.afterturn.easypoi.handler.impl.ExcelDataHandlerDefaultImpl;
import cn.afterturn.easypoi.handler.inter.IExcelVerifyHandler;


@Service
public class ${meta.clazz}Importer  {
  
    @Autowired
	EnumProvider enumProvider;
    
    @Autowired
	CommonValidator commonValidator;
    
    @Autowired
	CommonService commonService;
    
  private static Logger log = MyLog.get();
                        
    /**
	 * 批量导入
	 */
	@FileResolver
	@Transactional
	@Log(module = "${meta.domainLabel}", category = "导入")
	public Map<String, Object> process(UploadFile file, Map<String, Object> parameter) throws IOException { 
		Map<String, Object> result = new HashMap<>();
		result.put("success", true);
		ExcelImportResult<${meta.clazz}> objImportResult ;
		try {
			//获取数据，判断存在错误记录
			objImportResult = POIUtil.importExcel(file.getInputStream(), 0, 1, ${meta.clazz}.class,
					null, null);
		} catch (Exception e) {
			log.info( "EXCEL存在错误数据: {}", e);
			result.put("success", false);
			result.put("globleError", "EXCEL存在错误数据");
			return result;
		}
		/*
        // 列表校验-存在重复记录
		List<${meta.clazz}> objList = objImportResult.getList();
		// 去重
		List<${meta.clazz}> memoNotNullList = objList.stream()
				//跳过水单号为空的记录
				.filter(${meta.clazz?uncap_first}->StringUtils.isNotBlank(${meta.clazz?uncap_first}.getMemoCode()))
				.collect(Collectors.toList());
				
				
		List<${meta.clazz}> uniqueList = memoNotNullList.stream()
				.collect(Collectors.collectingAndThen(
						Collectors.toCollection(
								() -> new TreeSet<>(Comparator.comparing(${meta.clazz}::getMemoCode))),
						ArrayList::new));
		// 取重复列表
		Collection<${meta.clazz}> repeatList = CollectionUtils.subtract(memoNotNullList, uniqueList);
		 
		//重复数据收录 
		List<String> repeatStrList=new ArrayList();
		for (${meta.clazz} ${meta.clazz?uncap_first} : repeatList) {
			repeatStrList.add(${meta.clazz?uncap_first}.getMemoCode());
		}
		//重复数据收录去重
		repeatStrList=repeatStrList.stream().distinct().collect(Collectors.toList());*/
         List<String> repeatList =null;
		
		//明细校验
		 ${meta.clazz}ExcelDataHandler ${meta.clazz?uncap_first}ExcelDataHandler = new ${meta.clazz}ExcelDataHandler();
		List<String> paras=new ArrayList();
       <#list meta.importedList?chunk(1) as row> 
	<#list row as field>
		<#if (field.fromEnum?exists&&field.fromEnum !='')>
		paras.add("${field.label}");
        </#if> 
	</#list>
</#list> 
		String[] fileds = new String[paras.size()]; 
		paras.toArray(fileds);   
		${meta.clazz?uncap_first}ExcelDataHandler.setNeedHandlerFields(fileds);
        ExcelImportResult<${meta.clazz}> ${meta.clazz?uncap_first}ImportResult = POIUtil.importExcel(file.getInputStream(), 0, 1, ${meta.clazz}.class, new ${meta.clazz}ExcelVerifyHandler(repeatList), ${meta.clazz?uncap_first}ExcelDataHandler);     
                                                                                            
 

		// 明细校验失败
		if (objImportResult.isVerfiyFail()) {
			result.put("success", false);
			List<${meta.clazz}> objErrorList = objImportResult.getFailList();
			result.put("objErrorList", objErrorList);
			return result;
		}
		// 校验通过 
		for (${meta.clazz} obj : objImportResult.getList()) { 
			// 跳过空行
			if (commonValidator.isBlankRow(obj)) {
				continue;
			}  
			obj.setCreatedDate(new Date());
			obj.setCreator(ContextUtils.getLoginUsername());
			 JpaUtil.persist(obj);
		}  

		return result;
	} 

    public class ${meta.clazz}ExcelDataHandler extends ExcelDataHandlerDefaultImpl<${meta.clazz}> {

		@Override
		public Object importHandler(${meta.clazz} obj, String name, Object value) {
              <#list meta.importedList?chunk(1) as row> 
	<#list row as field>
		<#if (field.fromEnum?exists&&field.fromEnum !='')> 
        Map<String, String> ${field.name}Map = enumProvider.getVKs("${field.lookupName}"); 
        </#if> 
	</#list>
</#list>   
			switch (name) {
                <#list meta.importedList?chunk(1) as row> 
              <#list row as field>
		<#if (field.fromEnum?exists&&field.fromEnum !='')>
        case "${field.label}":
				value = ${field.name}Map.get(value);
				break;
        </#if> 
	</#list>
</#list>   
			 
			default:
				break;
			}
			return value;
		}
	}
	
	
	// 明细校验
	@Transactional
	public class ${meta.clazz}ExcelVerifyHandler implements IExcelVerifyHandler<${meta.clazz}> {
		List<String> repeatStrList;
		  public ${meta.clazz}ExcelVerifyHandler(List<String> repeatStrList) {
			super();
			this.repeatStrList = repeatStrList;
		}

		@Override
		public ExcelVerifyHandlerResult verifyHandler(${meta.clazz} obj) {
			ExcelVerifyHandlerResult excelVerifyHandlerResult = new ExcelVerifyHandlerResult();
			excelVerifyHandlerResult.setSuccess(true);
			// 判断空行
			if (commonValidator.isBlankRow(obj)) {
				return excelVerifyHandlerResult;
			} else { 
				StringBuilder msg = new StringBuilder();
				
						<#list meta.requiredList?chunk(1) as row> 
				<#list row as field>
				<#if field.required?exists && field.required =='y'>
				if (
					<#if field.dataType =="String">
		StringUtils.isBlank(obj.get${field.name?cap_first}())<#else>null==obj.get${field.name?cap_first}()</#if>) {
						commonValidator.notify(msg, obj, "${field.name}", "${field.label}不能为空!"); 
				}
		        </#if>
		    	</#list>
		    	</#list>
		    	 
				
				if (StringUtils.isNoneBlank(msg)) {
					excelVerifyHandlerResult.setSuccess(false);
					excelVerifyHandlerResult.setMsg(msg.toString());
					obj.setImportDetail(msg.toString());
				}
			}
			return excelVerifyHandlerResult;
		}

	}
 
	

                                    
} 