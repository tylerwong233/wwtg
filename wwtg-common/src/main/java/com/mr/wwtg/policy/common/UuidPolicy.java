package com.mr.wwtg.policy.common;

import java.lang.reflect.Field;

import org.springframework.util.ReflectionUtils;

import com.bstek.bdf3.dorado.jpa.policy.impl.AbstractNewGeneratorPolicy;
import com.mr.wwtg.utils.common.MyStringUtil;

public class UuidPolicy extends AbstractNewGeneratorPolicy {
	protected Object getValue(Object entity, Field field) {
		Object value = ReflectionUtils.getField(field, entity);
		return value == null ? MyStringUtil.getUUID() : value;
	}
}