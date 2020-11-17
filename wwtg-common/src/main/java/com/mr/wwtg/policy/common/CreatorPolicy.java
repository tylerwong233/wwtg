package com.mr.wwtg.policy.common;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;

import com.bstek.bdf3.dorado.jpa.policy.impl.AbstractNewGeneratorPolicy;
import com.bstek.bdf3.security.ContextUtils;

public class CreatorPolicy extends AbstractNewGeneratorPolicy {

	@Override
	protected Object getValue(Object entity, Field field) {

		String creator = "";
		try {
			creator = BeanUtils.getProperty(entity, "creater");
			if (StringUtils.isBlank(creator)) {
				creator = ContextUtils.getLoginUsername();
			}
		} catch (IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
			//e.printStackTrace();
		}
		return creator;
	}

}
