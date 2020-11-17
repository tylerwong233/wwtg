package com.mr.wwtg.utils.lambda;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CollectionUtilTest {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = LoggerFactory.getLogger(CollectionUtilTest.class);

	List<Integer> list;

	@Before
	public void testBefore() {
		if (logger.isDebugEnabled()) {
			logger.debug("testBefore() - start"); //$NON-NLS-1$
		}

		list = new ArrayList<>();
		for (int i = 0; i < 20; i++) {
			list.add((int) (Math.random() * 100));
		}

		if (logger.isDebugEnabled()) {
			logger.debug("testBefore() - end"); //$NON-NLS-1$
		}
	}

	@Test
	public void testSortList() {
		if (logger.isDebugEnabled()) {
			logger.debug("testSortList() - start"); //$NON-NLS-1$
		}

		System.out.println("this is sort method");
		System.out.println(MyCollectionUtil.sortList(list, true));

		if (logger.isDebugEnabled()) {
			logger.debug("testSortList() - end"); //$NON-NLS-1$
		}
	}

	@Test
	public void testFileter() {
		if (logger.isDebugEnabled()) {
			logger.debug("testFileter() - start"); //$NON-NLS-1$
		}

		System.out.println("this is filter method");
		System.out.println(MyCollectionUtil.filter(list, (t) -> {
			return t > 50;
		}));

		if (logger.isDebugEnabled()) {
			logger.debug("testFileter() - end"); //$NON-NLS-1$
		}
	}

	@Test
	public void testForeachList() {
		if (logger.isDebugEnabled()) {
			logger.debug("testFileter() - start"); //$NON-NLS-1$
		}

		System.out.println("this is foreach list method");
		// 一旦大于95停止遍历
		boolean res = MyCollectionUtil.foreach(list, (t, i) -> {
			System.out.println(i + "--" + t);
			return t < 95;
		});
		System.out.println("是否有大于95的数字:" + !res);
		if (logger.isDebugEnabled()) {
			logger.debug("testFileter() - end"); //$NON-NLS-1$
		}
	}

	@Test
	public void testForeachMap() {
		if (logger.isDebugEnabled()) {
			logger.debug("testForeachMap() - start"); //$NON-NLS-1$
		}
		Map<String, Object> map = new HashMap<>();
		map.put("ss", "tt");
		map.put("ii", 193);
		map.put("ll", list);
		System.out.println("this is foreach Map method");
		MyCollectionUtil.foreach(map, (k, v) -> {
			System.out.println(k + "::" + v);
			return true;
		});

		if (logger.isDebugEnabled()) {
			logger.debug("testForeachMap() - end"); //$NON-NLS-1$
		}
	}

	@Test
	public void testForeachSet() {
		if (logger.isDebugEnabled()) {
			logger.debug("testForeachSet() - start"); //$NON-NLS-1$
		}
		Set<Object> ss = new HashSet<>();
		ss.add("1");
		ss.add("3");
		ss.add(list);
		System.out.println("this is foreach list method");
		MyCollectionUtil.foreach(ss, (s) -> {
			System.out.println(s);
			return true;
		});

		if (logger.isDebugEnabled()) {
			logger.debug("testForeachSet() - end"); //$NON-NLS-1$
		}
	}

}
