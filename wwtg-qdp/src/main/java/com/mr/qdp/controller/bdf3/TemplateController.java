package com.mr.qdp.controller.bdf3;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.bstek.dorado.annotation.Expose;
import com.mr.qdp.entity.TemplateBdf3;

@Controller("bdf3templateController")
@Expose
@Transactional
public class TemplateController {

	public void saveInitSql(Map<String, Object> parameter) {
		String initSql = (String) parameter.get("initSql");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setInitSql(initSql);
		JpaUtil.merge(templateBdf3);
	}

	public void saveMenuSql(Map<String, Object> parameter) {
		String menuSql = (String) parameter.get("menuSql");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setMenuSql(menuSql);
		JpaUtil.merge(templateBdf3);
	}

	public void saveEntity(Map<String, Object> parameter) {
		String entity = (String) parameter.get("entity");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setEntity(entity);
		JpaUtil.merge(templateBdf3);
	}

	public void saveController(Map<String, Object> parameter) {
		String controller = (String) parameter.get("controller");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setController(controller);
		JpaUtil.merge(templateBdf3);
	}

	public void saveImporter(Map<String, Object> parameter) {
		String importer = (String) parameter.get("importer");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setImporter(importer);
		JpaUtil.merge(templateBdf3);
	}

	public void saveImporterVo(Map<String, Object> parameter) {
		String importerVo = (String) parameter.get("importerVo");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setImporterVo(importerVo);
		JpaUtil.merge(templateBdf3);
	}

	public void saveView(Map<String, Object> parameter) {
		String view = (String) parameter.get("view");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setView(view);
		JpaUtil.merge(templateBdf3);
	}

	public void saveService(Map<String, Object> parameter) {
		String service = (String) parameter.get("service");
		TemplateBdf3 templateBdf3 = getTemplateBdf3();
		templateBdf3.setService(service);
		JpaUtil.merge(templateBdf3);
	}

	public TemplateBdf3 getTemplateBdf3() {
		List<TemplateBdf3> templateBdf3List = JpaUtil.findAll(TemplateBdf3.class);
		TemplateBdf3 templateBdf3 = templateBdf3List.get(0);
		return templateBdf3;
	}

	public String loadInitSql() {
		return getTemplateBdf3().getInitSql();
	}

	public String loadMenuSql() {
		return getTemplateBdf3().getMenuSql();
	}

	public String loadEntity() {
		return getTemplateBdf3().getEntity();
	}

	public String loadService() {
		return getTemplateBdf3().getService();
	}

	public String loadController() {
		return getTemplateBdf3().getController();
	}

	public String loadImporter() {
		return getTemplateBdf3().getImporter();
	}

	public String loadImporterVo() {
		return getTemplateBdf3().getImporterVo();
	}

	public String loadView() {
		return getTemplateBdf3().getView();
	}
}