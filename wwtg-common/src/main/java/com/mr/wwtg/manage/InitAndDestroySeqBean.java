package com.mr.wwtg.manage;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public class InitAndDestroySeqBean implements InitializingBean, DisposableBean {

	// @Autowired
	// private ConfigManager configManager;

	public InitAndDestroySeqBean() {
		System.out.println("执行InitAndDestroySeqBean: 构造方法");

	}

	@PostConstruct
	public void postConstruct() {
		System.out.println("执行InitAndDestroySeqBean: postConstruct");
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("执行InitAndDestroySeqBean: afterPropertiesSet");
		// configManager.initEnumMapStatic();
		// configManager.initTableMap();
		// configManager.TEMPLATE_DEPLOYPATH =
		// config.getServletContext().getRealPath("/");

	}

	public void initMethod() {
		System.out.println("执行InitAndDestroySeqBean: init-method");
	}

	@PreDestroy
	public void preDestroy() {
		System.out.println("执行InitAndDestroySeqBean: preDestroy");
	}

	@Override
	public void destroy() throws Exception {
		System.out.println("执行InitAndDestroySeqBean: destroy");
	}

	public void destroyMethod() {
		System.out.println("执行InitAndDestroySeqBean: destroy-method");
	}

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("com/chj/spring/bean.xml");
		context.close();
	}

}
