package com.mr.qdp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.bdf3.dorado.jpa.CriteriaUtils;
import com.bstek.bdf3.dorado.jpa.JpaUtil;
import com.bstek.bdf3.security.ContextUtils;
import com.bstek.dorado.annotation.DataProvider;
import com.bstek.dorado.annotation.DataResolver;
import com.bstek.dorado.data.provider.Criteria;
import com.bstek.dorado.data.provider.Page;
import com.bstek.dorado.data.provider.filter.FilterOperator;
import com.bstek.dorado.uploader.UploadFile;
import com.bstek.dorado.uploader.annotation.FileResolver;
import com.mr.qdp.entity.Domain;
import com.mr.qdp.utils.common.MyBeanUtil;
import com.mr.qdp.utils.common.MyCriteriaUtils;
import com.mr.qdp.utils.common.MyDateUtil;
import com.mr.qdp.utils.common.MyFileUtil;
import com.mr.qdp.utils.common.MyStringUtil;
import com.mr.qdp.utils.common.PathUtil;
import com.mr.qdp.utils.excel.ExcelData;
import com.mr.qdp.utils.excel.ExcelHeader;
import com.mr.qdp.utils.excel.ExcelImportError;
import com.mr.qdp.utils.excel.ExcelReader;

import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

@Controller
@Transactional(readOnly = true)
public class DomainController {
	/**
	 * 增删改
	 */
	@DataResolver
	@Transactional
	public void save(List<Domain> workers) {
		JpaUtil.save(workers);
	}

	/**
	 * 查询
	 */
	@DataProvider
	public void query(Page<Domain> page, Map<String, Object> parameter) {
		if (parameter == null) {
			parameter = new HashMap<>();
		}
		MyCriteriaUtils.clearEmptyValue(parameter);
		Criteria criteria = new Criteria();
		buildCondition(page, parameter, criteria);
	}

	/**
	 * 构建查询条件
	 *
	 * @param page
	 * @param parameter
	 * @param criteria
	 */
	private void buildCondition(Page<Domain> page, Map<String, Object> parameter, Criteria criteria) {
		com.bstek.dorado.data.provider.Order order = new com.bstek.dorado.data.provider.Order();
		order.setProperty("fieldOrder");
		order.setDesc(false);
		criteria.addOrder(order);
		// 领域模型定义ID
		if (parameter.containsKey("domainSchemaId")) {
			CriteriaUtils.add(criteria, "domainSchemaId", FilterOperator.eq, parameter.get("domainSchemaId"));
			parameter.remove("domainSchemaId", parameter.get("domainSchemaId"));
		}
		MyCriteriaUtils.buildCriteriaMap(parameter);
		criteria = MyCriteriaUtils.add(criteria, parameter);
		JpaUtil.linq(Domain.class).where(criteria).paging(page);
	}

	/**
	 * EXCEL文件上传导入
	 */
	@Transactional
	@FileResolver
	public Map<String, String> process(UploadFile file, Map<String, Object> parameter) throws Exception {
		String domainSchemaId = (String) parameter.get("domainSchemaId");
		File uploadedFile = MyFileUtil.getStaticDirectory();
		File uploadDir = new File(uploadedFile, "uploaded");
		MyFileUtil.createDirectory(uploadDir);
		File destFile = PathUtil.getDestFile(file.getFileName(), uploadDir);
		try {
			file.transferTo(destFile);
			// 导EXCEL
			String result = batchCreateFromExcel(domainSchemaId, destFile);
			String success = StringUtils.substringBefore(result, ",");
			String fail = StringUtils.substringAfter(result, ",");
			String tip = "导入完成|成功" + success + "条|失败" + fail + "条";
			tip = URLEncoder.encode(tip, "UTF-8");
			Map<String, String> data = new HashMap<String, String>();
			data.put("tip", tip);
			data.put("success", success);
			data.put("fail", fail);
			return data;
		} catch (IllegalStateException e) {
			e.printStackTrace();
			Map<String, String> data = new HashMap<String, String>();
			data.put("tip", "导入失败");
			return data;
		} catch (IOException e) {
			e.printStackTrace();
			Map<String, String> data = new HashMap<String, String>();
			data.put("tip", "导入失败");
			return data;
		}
	}

	// 根据导入配置批量创建
	public String batchCreateFromExcel(String domainSchemaId, File file) throws Exception {
		ExcelData toFiledExcelData = new ExcelData();
		ExcelReader excelReader = new ExcelReader();
		// EXCEL表头集合
		List<ExcelHeader> headerList = excelReader.getExcelDataHeaderListFromSheet(file);
		// 映射关系
		List<Integer> initMappingList = new ArrayList<Integer>();
		for (int i = 0; i < headerList.size(); i++) {
			String toFieldStr = BeanUtils.getProperty(toFiledExcelData, "toField" + (i + 1));
			int toFiledValue = Integer.valueOf(toFieldStr);
			initMappingList.add(toFiledValue);
		}
		// 获取List
		List<ExcelData> initExcelDataList = excelReader.getExcelDataListFromSheet(file);
		// excelRow=EXCEL行数量
		int rowNum = initExcelDataList.size();
		// 组装新对象
		// String batchCode = getBatchCode();
		List<Domain> newObjectList = new ArrayList<Domain>();
		// 记录错误行
		List<ExcelImportError> errorRowList = new ArrayList<ExcelImportError>();
		for (int excelRow = 0; excelRow < rowNum; excelRow++) {
			// System.out.println(excelRow);
			// 入库实体类
			Domain domain = new Domain();
			// 记录错误类
			ExcelImportError excelImportError = new ExcelImportError();
			// 错误原因
			StringBuffer reasonSb = new StringBuffer();
			// EXCEL的每一行数据
			ExcelData excelData = (ExcelData) initExcelDataList.get(excelRow);
			// 正式导入
			for (int mappingIdx = 0; mappingIdx < headerList.size(); mappingIdx++) {
				String propertyType = Domain.getPropertyTypeByEnum(initMappingList.get(mappingIdx));
				String propertyName = Domain.getPropertyNameByEnum(initMappingList.get(mappingIdx));
				if (initMappingList.get(mappingIdx) != 0) {
					if (StringUtils.isBlank(propertyType)) {
						continue;
					}
					if (propertyType.equals("String")) {
						String arg = BeanUtils.getProperty(excelData, "field" + (mappingIdx + 1));
						// EXCEL空值
						if (StringUtils.isBlank(arg)) {
							// 必填项
							if (isRequiredByRelatedFieldValue(propertyName)) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列应该是必填项");
							}
						}
						BeanUtils.setProperty(domain, propertyName, arg);
					}
					if (propertyType.equals("enum")) {
						String valueFromForm = BeanUtils.getProperty(excelData, "field" + (mappingIdx + 1));
						valueFromForm = MyStringUtil.cleanInput(valueFromForm);
						// EXCEL空值
						if (StringUtils.isBlank(valueFromForm)) {
							// 必填项
							if (isRequiredByRelatedFieldValue(propertyName)) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列应该是必填项");
							}
							// 不必填
							if (!isRequiredByRelatedFieldValue(propertyName)) {
								BeanUtils.setProperty(domain, propertyName, 0);
							}
						}
						if (StringUtils.isNotBlank(valueFromForm)) {
							String valueFromString = this.getEnumKeyByFieldValue(propertyName, valueFromForm);
							valueFromForm = MyStringUtil.cleanInput(valueFromForm);
							// ENUM查不到值
							if (valueFromString.equals("error")) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列无法根据名称查到对应的数据字典");
							}
							// ENUM能查到值
							if (!valueFromString.equals("error")) {
								long arg = Long.valueOf(valueFromString);
								BeanUtils.setProperty(domain, propertyName, arg);
							}
						}
					}
					if (propertyType.equals("table")) {
						String valueFromForm = BeanUtils.getProperty(excelData, "field" + (mappingIdx + 1));
						valueFromForm = MyStringUtil.cleanInput(valueFromForm);
						// EXCEL空值
						if (StringUtils.isBlank(valueFromForm)) {
							// 必填项
							if (isRequiredByRelatedFieldValue(propertyName)) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列应该是必填项");
							}
							// 不必填
							if (!isRequiredByRelatedFieldValue(propertyName)) {
								BeanUtils.setProperty(domain, propertyName, 0);
							}
						}
						if (StringUtils.isNotBlank(valueFromForm)) {
							String valueFromString = this.getTableKeyByFieldValue(propertyName, valueFromForm);
							// TABLE查不到值
							if (valueFromString.equals("error")) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列无法根据名称查到对应的关联表");
							}
							// TABLE能查到值
							if (!valueFromString.equals("error")) {
								BeanUtils.setProperty(domain, propertyName, valueFromString);
							}
						}
					}
					if ((propertyType.equals("BigDecimal") || propertyType.equals("Long")
							|| propertyType.equals("Integer")) && !propertyType.equals("enum")) {
						String valueFromForm = BeanUtils.getProperty(excelData, "field" + (mappingIdx + 1));
						valueFromForm = MyStringUtil.cleanInput(valueFromForm);
						// EXCEL空值
						if (StringUtils.isBlank(valueFromForm)) {
							// 必填项
							if (isRequiredByRelatedFieldValue(propertyName)) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列应该是必填项");
							}
							// 不必填
							if (!isRequiredByRelatedFieldValue(propertyName)) {
								BeanUtils.setProperty(domain, propertyName, 0);
							}
						}
						if (StringUtils.isNotBlank(valueFromForm)) {
							// 数字格式不对
							try {
								BigDecimal arg = new BigDecimal(valueFromForm);
								BeanUtils.setProperty(domain, propertyName, arg);
							} catch (Exception e) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列数字格式不对");
							}
						}
					}
					if (propertyType.equals("date")) {
						String valueFromForm = BeanUtils.getProperty(excelData, "field" + (mappingIdx + 1));
						valueFromForm = MyStringUtil.cleanInput(valueFromForm);
						// EXCEL空值
						if (StringUtils.isBlank(valueFromForm)) {
							// 必填项
							if (isRequiredByRelatedFieldValue(propertyName)) {
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列应该是必填项");
							}
							// 不必填
							if (!isRequiredByRelatedFieldValue(propertyName)) {
								/*
								 * BeanUtils.setProperty(domain, propertyName,
								 * null);
								 */
							}
						}
						if (StringUtils.isNotBlank(valueFromForm)) {
							// 日期格式不对
							try {
								Date arg = MyDateUtil.parserToDay(valueFromForm);
								BeanUtils.setProperty(domain, propertyName, arg);
							} catch (Exception e) {
								System.out.println("Date error----------------");
								// e.printStackTrace();
								// 记录错误
								reasonSb.append(" 第" + (mappingIdx + 1) + "列日期格式不对");
							}
						}
					}
				}
				// domain.setBatchNum(batchCode);
			}
			excelImportError.setRowIdx(excelRow);
			excelImportError.setReason(reasonSb.toString());
			errorRowList.add(excelImportError);
			newObjectList.add(domain);
		}
		// 重整errorRowList
		List<ExcelImportError> newErrorRowList = new ArrayList<ExcelImportError>();
		for (int i = 0; i < errorRowList.size(); i++) {
			ExcelImportError excelImportError = errorRowList.get(i);
			if (StringUtils.isNotBlank(excelImportError.getReason())) {
				newErrorRowList.add(excelImportError);
			}
		}
		List<ExcelImportError> newGoodRowList = new ArrayList<ExcelImportError>();
		for (int i = 0; i < errorRowList.size(); i++) {
			ExcelImportError excelImportError = errorRowList.get(i);
			if (StringUtils.isBlank(excelImportError.getReason())) {
				newGoodRowList.add(excelImportError);
			}
		}
		// errorIdxList
		List<Integer> errorIdxList = new ArrayList<Integer>();
		for (int i = 0; i < newErrorRowList.size(); i++) {
			errorIdxList.add(newErrorRowList.get(i).getRowIdx());
		}
		// goodIdxList
		List<Integer> goodIdxList = new ArrayList<Integer>();
		for (int i = 0; i < newGoodRowList.size(); i++) {
			goodIdxList.add(newGoodRowList.get(i).getRowIdx());
		}
		// 根据goodIdxList获得goodObjectList
		List<Domain> goodObjectList = new ArrayList<Domain>();
		for (int i = 0; i < goodIdxList.size(); i++) {
			Domain domain = newObjectList.get(goodIdxList.get(i));
			if (!MyBeanUtil.checkAllFieldValueNull(domain)) {
				goodObjectList.add(domain);
			}
		}
		// 根据goodIdxList获得goodExcelDataList
		List<ExcelData> goodExcelDataList = new ArrayList<ExcelData>();
		for (int i = 0; i < goodIdxList.size(); i++) {
			ExcelData excelData = initExcelDataList.get(goodIdxList.get(i));
			goodExcelDataList.add(excelData);
		}
		// 根据errorIdxList获得badExcelDataList
		List<ExcelData> badExcelDataList = new ArrayList<ExcelData>();
		for (int i = 0; i < errorIdxList.size(); i++) {
			ExcelData excelData = initExcelDataList.get(errorIdxList.get(i));
			badExcelDataList.add(excelData);
		}
		String successFileName = "";
		String failFileName = "";
		// 成功
		if (goodExcelDataList.size() > 0) {
			for (int i = 0; i < goodObjectList.size(); i++) {
				// 创建动作
				Domain domain = goodObjectList.get(i);
				domain.setCreateDate(new Date());
				domain.setCreater(ContextUtils.getLoginUsername());
				domain.setDomainSchemaId(domainSchemaId);
				// 格式化属性名
				String fieldName = domain.getName();
				//fieldName = MyStringUtil.formatFiled(fieldName);
				domain.setName(fieldName);
				JpaUtil.persist(domain);
			}
			// 往服务器里写成功文件
			OutputStream os = null;
			WritableWorkbook book = null;
			try {
				os = new FileOutputStream("Domain_success.xls");
				book = jxl.Workbook.createWorkbook(os);
				WritableSheet sheet = book.createSheet("sheet1", 0);
				if (goodExcelDataList != null && goodExcelDataList.size() > 0) {
					for (int columnIdx = 0; columnIdx < headerList.size(); columnIdx++) {
						sheet.addCell(new Label(columnIdx, 0, headerList.get(columnIdx).getName()));
					}
					for (int rowIdx = 0; rowIdx < goodExcelDataList.size(); rowIdx++) {
						ExcelData excelData = goodExcelDataList.get(rowIdx);
						for (int columnIdx = 0; columnIdx < headerList.size(); columnIdx++) {
							String excelDataField = BeanUtils.getProperty(excelData, "field" + (columnIdx + 1));
							try {
								sheet.addCell(new Label(columnIdx, rowIdx + 1, excelDataField));
							} catch (Exception e) {
								sheet.addCell(new Label(columnIdx, rowIdx, ""));
							}
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				book.write();
				book.close();
				os.close();
			}
			InputStream in = null;
			OutputStream out = null;
			try {
				in = new FileInputStream("Domain_success.xls");
				File importFile = MyFileUtil.getStaticDirectory();
				String dir = importFile.getAbsolutePath() + "/import";
				MyFileUtil.createDirectory(dir);
				successFileName = "Domain_success.xls";
				String filePath = dir + "/" + successFileName;
				out = new FileOutputStream(filePath);
				int byteread = 0;
				byte[] bytes = new byte[8192];
				while ((byteread = in.read(bytes, 0, 8192)) != -1) {
					out.write(bytes, 0, byteread);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					in.close();
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		// 往服务器里写失败文件
		if (newErrorRowList.size() > 0) {
			OutputStream os = null;
			jxl.write.WritableWorkbook book = null;
			try {
				os = new FileOutputStream("Domain_fail.xls");
				book = jxl.Workbook.createWorkbook(os);
				WritableSheet sheet = book.createSheet("sheet1", 0);
				if (badExcelDataList != null && badExcelDataList.size() > 0) {
					for (int columnIdx = 0; columnIdx < headerList.size(); columnIdx++) {
						sheet.addCell(new Label(columnIdx, 0, headerList.get(columnIdx).getName()));
					}
					sheet.addCell(new Label(headerList.size(), 0, "失败原因"));
					for (int rowIdx = 0; rowIdx < badExcelDataList.size(); rowIdx++) {
						ExcelData excelData = badExcelDataList.get(rowIdx);
						for (int columnIdx = 0; columnIdx < headerList.size(); columnIdx++) {
							String excelDataField = BeanUtils.getProperty(excelData, "field" + (columnIdx + 1));
							try {
								sheet.addCell(new Label(columnIdx, rowIdx + 1, excelDataField));
							} catch (Exception e) {
								sheet.addCell(new Label(columnIdx, rowIdx, ""));
							}
						}
						sheet.addCell(
								new Label(headerList.size(), rowIdx + 1, newErrorRowList.get(rowIdx).getReason()));
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				book.write();
				book.close();
				os.close();
			}
			InputStream in = null;
			OutputStream out = null;
			try {
				in = new FileInputStream("Domain_fail.xls");
				File importFile = MyFileUtil.getStaticDirectory();
				String dir = importFile.getAbsolutePath() + "/import";
				MyFileUtil.createDirectory(dir);
				failFileName = "Domain_fail.xls";
				String filePath = dir + "/" + failFileName;
				out = new FileOutputStream(filePath);
				int byteread = 0;
				byte[] bytes = new byte[8192];
				while ((byteread = in.read(bytes, 0, 8192)) != -1) {
					out.write(bytes, 0, byteread);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					in.close();
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		String result = goodObjectList.size() + "," + badExcelDataList.size();
		return result;
	}

	// 根据字段值取必填项
	private boolean isRequiredByRelatedFieldValue(String propertyName) {
		return false;
	}

	// 导入用,根据VALUE查询ENUM KEY
	private String getEnumKeyByFieldValue(String propertyName, String valueFromForm) {
		switch (propertyName) {
		default:
			return "error";
		}
	}

	// 导入用,根据VALUE查询关联表KEY
	private String getTableKeyByFieldValue(String propertyName, String valueFromForm) {
		switch (propertyName) {

		default:
			return "error";
		}
	}

}