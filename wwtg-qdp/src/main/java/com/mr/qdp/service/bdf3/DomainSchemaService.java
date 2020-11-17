package com.mr.qdp.service.bdf3;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.lang.StringUtils;
import org.hibernate.engine.jdbc.internal.BasicFormatterImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.bstek.dorado.annotation.Expose;
import com.mr.qdp.entity.Domain;
import com.mr.qdp.entity.DomainSchemaBdf3;
import com.mr.qdp.manage.SysConstants;
import com.mr.qdp.utils.jdbc.JDBCUtil;
import com.mr.qdp.utils.yml.BizDbConf;
import com.mr.qdp.utils.yml.ProjectConf;

@Service("domainSchemaBdf3Service")
@Transactional
public class DomainSchemaService {
	@Autowired
	private BizDbConf prdDb;

	@Autowired
	private ProjectConf qdpProject;

	@Autowired
	private GenCodeService rcCodeGenCloudService;
	@Autowired
	private GetCodeService getCodeService;

	/**
	 * 执行数据源1
	 */
	// @Modifying
	// @Transactional(TransactionManagers.transactionManager1)
	private void executeDatasource1(String sql) {
		String driverClassName = "com.mysql.jdbc.Driver";
		String url = prdDb.getUrl();
		String username = prdDb.getUsername();
		String password = prdDb.getPassword();
		JDBCUtil jdbcUtil = new JDBCUtil(driverClassName, url, username, password);
		QueryRunner run = new QueryRunner(jdbcUtil.getDataSource());
		try {
			run.update(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Expose
	public String genCodeCloud(Map<String, Object> parameter) {
		// System.out.println("genCodeCloud...start");
		try {
			List<DomainSchemaBdf3> domainSchemaBdf3List = (List<DomainSchemaBdf3>) parameter.get("selectList");
			Integer isExcuteInitSql = (Integer) parameter.get("isExcuteInitSql");
			Integer isExcuteMenuSql = (Integer) parameter.get("isExcuteMenuSql");
			for (DomainSchemaBdf3 domainSchemaBdf3 : domainSchemaBdf3List) {
				// 清数据
				cleanGenCode(domainSchemaBdf3);
				JpaUtil.merge(domainSchemaBdf3);
				String domainSchemaId = domainSchemaBdf3.getId();
				List<Domain> domainList = JpaUtil.linq(Domain.class).equal("domainSchemaId", domainSchemaId).list();

				// 生成代码 ->QDP
				rcCodeGenCloudService.genCode(domainSchemaBdf3, domainList);
				// 拉取代码到工程 <-QDP
				getCodeService.getCode(domainSchemaBdf3);
				// 执行建表SQL ->正式库
				if (null != isExcuteInitSql && isExcuteInitSql == SysConstants.YES_NO.YES) {
					String initSqlFormatted = new BasicFormatterImpl().format(domainSchemaBdf3.getInitSql());
					String[] initSqlArray = StringUtils.split(initSqlFormatted, ";");
					for (String sql : initSqlArray) {
						System.out.println("执行建表SQL:" + sql);
						executeDatasource1(sql);
					}
				}
				// 执行菜单SQL
				if (null != isExcuteMenuSql && isExcuteMenuSql == SysConstants.YES_NO.YES) {
					String menuSqlFormatted = new BasicFormatterImpl().format(domainSchemaBdf3.getMenuSql());
					String[] menuSqlArray = StringUtils.split(menuSqlFormatted, ";");
					for (String sql : menuSqlArray) {
						System.out.println("执行菜单SQL:" + sql);
						executeDatasource1(sql);
					}
				}

			}
			return "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
			return "操作不成功";
		}
	}

	@Expose
	public String getMenuSql(Map<String, Object> parameter) {
		StringBuilder sb = new StringBuilder();
		try {
			List<DomainSchemaBdf3> domainSchemaBdf3List = (List<DomainSchemaBdf3>) parameter.get("selectList");
			for (DomainSchemaBdf3 domainSchemaBdf3 : domainSchemaBdf3List) {
				sb.append(domainSchemaBdf3.getMenuSql());
			}
			return sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}

	@Expose
	public String getEnumSql(Map<String, Object> parameter) {
		StringBuilder sb = new StringBuilder();
		StringBuilder sb1 = new StringBuilder();
		StringBuilder sb2 = new StringBuilder();
		StringBuilder sb3 = new StringBuilder();
		Map map = new HashMap<>();
		try {
			List<DomainSchemaBdf3> domainSchemaBdf3List = (List<DomainSchemaBdf3>) parameter.get("selectList");
			for (DomainSchemaBdf3 domainSchemaBdf3 : domainSchemaBdf3List) {
				String domainSchemaId = domainSchemaBdf3.getId();
				List<Domain> domainList = JpaUtil.linq(Domain.class).equal("domainSchemaId", domainSchemaId).list();
				for (Domain domain : domainList) {
					String fromEnum = domain.getFromEnum();
					String label = domain.getLabel();
					if (StringUtils.isNotBlank(fromEnum)) {
						fromEnum = StringUtils.substringBefore(fromEnum, "(");
						// 判重
						if (!map.containsKey(fromEnum)) {
							map.put(fromEnum, "");
							sb.append(fromEnum + "\r\n");
							sb.append(fromEnum + "\r\n");

							sb1.append(1 + "\r\n");
							sb1.append(2 + "\r\n");

							sb2.append(label + "1\r\n");
							sb2.append(label + "2\r\n");

							sb3.append(domainSchemaBdf3.getDomainLabel() + label + "\r\n");
							sb3.append(domainSchemaBdf3.getDomainLabel() + label + "\r\n");
						}
					}
				}
			}
			Map map1 = new HashMap();
			map1.put("type", sb);
			map1.put("key", sb1);
			map1.put("value", sb2);
			map1.put("desc", sb3);
			String result = JSON.toJSONString(map1);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}

	// 清数据
	private void cleanGenCode(DomainSchemaBdf3 domainSchemaBdf3) {
		domainSchemaBdf3.setGenController(null);
		domainSchemaBdf3.setGenEntity(null);
		domainSchemaBdf3.setGenService(null);
		domainSchemaBdf3.setGenWeb(null);
	}

	@Expose
	public String getNameById(String id) {
		try {
			DomainSchemaBdf3 domainSchemaBdf3 = JpaUtil.getOne(DomainSchemaBdf3.class, id);
			return domainSchemaBdf3.getDomainLabel() + " | " + domainSchemaBdf3.getDomainName();
		} catch (Exception e) {
			return "";
		}
	}

	@Expose
	public String cleanDomain(Map<String, Object> parameter) {
		List<Domain> domianList = JpaUtil.findAll(Domain.class);
		int i = 0;
		for (Domain domain : domianList) {
			String domainSchemaId = domain.getDomainSchemaId();
			DomainSchemaBdf3 domainSchemaBdf3 = JpaUtil.getOne(DomainSchemaBdf3.class, domainSchemaId);
			if (null == domainSchemaBdf3) {
				JpaUtil.remove(domain);
				System.out.println(++i + domainSchemaId);
			}
		}
		return "清理" + i + "条Domain记录";
	}
}