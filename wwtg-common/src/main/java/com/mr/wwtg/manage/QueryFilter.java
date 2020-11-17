package com.mr.wwtg.manage;

import java.util.Date;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import com.bstek.dorado.data.provider.Criteria;
import com.bstek.dorado.data.provider.filter.FilterOperator;
import com.bstek.dorado.data.provider.filter.SingleValueFilterCriterion;
import com.mr.wwtg.utils.common.MyDateUtil;

@Component
public class QueryFilter {

	/**
	 * 普通条件过滤
	 */
	public Criteria condition(Criteria criteria, Map<String, ?> map) {
		if (map != null) {
			for (Entry<String, ?> entry : map.entrySet()) {
				String key = (String) entry.getKey();
				Object value = entry.getValue();
				SingleValueFilterCriterion criterion = new SingleValueFilterCriterion();
				// 空值
				if (value == null || StringUtils.isBlank(value.toString())
						|| !(value instanceof String || value instanceof Date)) {
					continue;
				}
				// 日期范围
				//精确到天
				// 起
				if (key.endsWith("_startTime_day")) {
					criterion.setFilterOperator(FilterOperator.ge);
					key = StringUtils.substringBeforeLast(key, "_startTime");
					if (value instanceof Date) {
						value = MyDateUtil.getCurrStart((Date) value);
					}
					if (value instanceof String) {
						Date date = MyDateUtil.parseToDay2((String) value);
						value = MyDateUtil.getCurrStart(date);
					}
				}
				// 至
				else if (key.endsWith("_endTime_day")) {
					criterion.setFilterOperator(FilterOperator.le);
					key = StringUtils.substringBeforeLast(key, "_endTime");
					if (value instanceof Date) {
						value = MyDateUtil.getCurrEnd((Date) value);
					}
					if (value instanceof String) {
						Date date = MyDateUtil.parseToDay2((String) value);
						value = MyDateUtil.getCurrEnd(date);
					}
				}
				// 精确到时分秒
				// 起
				else if (key.endsWith("_startTime")) {
					criterion.setFilterOperator(FilterOperator.ge);
					key = StringUtils.substringBeforeLast(key, "_startTime"); 
				}
				// 至
				else if (key.endsWith("_endTime")) {
					criterion.setFilterOperator(FilterOperator.le);
					key = StringUtils.substringBeforeLast(key, "_endTime"); 
				}
				// 字符串
				// 区分精确/模糊
				else if (key.endsWith("_eq")) {
					criterion.setFilterOperator(FilterOperator.eq);
					key = StringUtils.substringBeforeLast(key, "_eq");
				} else {
					criterion.setFilterOperator(FilterOperator.like);
				}
				criterion.setProperty(key);
				criterion.setValue(value);
				criteria.addCriterion(criterion);
			}
		}
		return criteria;
	}

}
