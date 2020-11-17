package com.mr.wwtg.policy.common;

import java.lang.reflect.Field;

import com.bstek.bdf3.dorado.jpa.policy.impl.AbstractModifiedGeneratorPolicy;
import com.bstek.bdf3.security.ContextUtils;
 
public class ModifierPolicy extends AbstractModifiedGeneratorPolicy {

	@Override
	protected Object getValue(Object entity, Field field) {
		return ContextUtils.getLoginUsername();
	}

}
