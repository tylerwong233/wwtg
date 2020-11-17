<@compress>
package com.${meta.company}.${meta.packagePrefix}.controller;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.bstek.bdf3.log.annotation.Log;
import com.bstek.dorado.annotation.DataProvider;
import com.bstek.dorado.annotation.DataResolver;
import com.bstek.dorado.data.provider.Criteria;
import com.bstek.dorado.data.provider.Page;
import com.${meta.company}.${meta.packagePrefix}.entity.*;
import com.${meta.company}.${meta.packagePrefix}.manage.QueryFilter;
import com.${meta.company}.${meta.packagePrefix}.utils.common.MyLog;
 
@Controller
@Transactional(readOnly = true)
public class ${meta.clazz}Controller  extends QueryFilter {

   
  private static Logger log = MyLog.get();


	@DataResolver
	@Transactional
	@Log(module = "${meta.domainLabel}", category = "CRUD")
	public void save(List<${meta.clazz}> ${meta.clazz?uncap_first}s) {
		JpaUtil.save(${meta.clazz?uncap_first}s);
	}
	
  @DataProvider
	public void query(Page<${meta.clazz}> page, Map<String, Object> parameter) {
		Criteria criteria = new Criteria();
		criteria = condition(criteria, parameter);
		JpaUtil.linq(${meta.clazz}.class).where(criteria).desc("updateDate").paging(page);
	}    
}

</@compress>