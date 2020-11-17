package com.mr.qdp.utils.excel;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mr.qdp.utils.common.MyDateUtil;

public class ExcelReader {
	private static final Logger logger = LoggerFactory.getLogger(ExcelReader.class);

	/**
	 * 从excel中将数据读取出来存放到 一个List里面
	 * <p>
	 * Excel文件内包含2行,第一行为描述，第二行起为正文
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws Exception
	 */
	public List<ExcelData> getExcelDataListFromSheet(File file)
			throws IOException, IllegalAccessException, InvocationTargetException {
		Sheet sheet = ExcelUtil.getSheetByForm(file, 0);
		List<ExcelData> excelDataList = new ArrayList<>();
		// 跳过第一行
		int i = 0;
		for (Row row : sheet) {
			i++;
			if (i == 1) {
				continue;
			}
			ExcelData excelData = new ExcelData();
			for (int fieldIdx = 0; fieldIdx < 100; fieldIdx++) {
				String data = "";
				Cell cell = row.getCell(fieldIdx);
				if (row.getCell(fieldIdx) != null) {
					switch (cell.getCellType()) {
					case Cell.CELL_TYPE_STRING:
						data = cell.getStringCellValue().toString().trim();
						break;
					case Cell.CELL_TYPE_NUMERIC:
						if (DateUtil.isCellDateFormatted(cell)) {
							Date date = cell.getDateCellValue();
							BeanUtils.setProperty(excelData, "field" + (fieldIdx + 1), data);
							data = MyDateUtil.formatToDay(date);

						} else {
							Double dNumericCellValue = cell.getNumericCellValue();
							long lNumericCellValue = dNumericCellValue.longValue();
							data = String.valueOf(lNumericCellValue);
						}
						break;
					default:
						data = "";
						break;
					}

				}
				BeanUtils.setProperty(excelData, "field" + (fieldIdx + 1), data);
			}
			excelDataList.add(excelData);
		}
		return excelDataList;
	}

	/**
	 * 从IO流中将数据读取出来存放到 一个List里面
	 * <p>
	 * Excel文件内包含2行,第一行为描述，第二行起为正文
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public List<ExcelData> getExcelDataListFromSheetIO(Sheet sheet)
			throws IllegalAccessException, InvocationTargetException {
		// Sheet sheet = ExcelUtil.getSheetByFormIO(inputStream, 0);
		List<ExcelData> excelDataList = new ArrayList<>();
		// 跳过第一行
		int i = 0;
		for (Row row : sheet) {
			i++;
			if (i == 1) {
				continue;
			}
			ExcelData excelData = new ExcelData();
			for (int fieldIdx = 0; fieldIdx < 100; fieldIdx++) {
				String data = "";
				Cell cell = row.getCell(fieldIdx);
				if (row.getCell(fieldIdx) != null) {
					switch (cell.getCellType()) {
					case Cell.CELL_TYPE_STRING:
						data = cell.getStringCellValue().toString().trim();
						break;
					case Cell.CELL_TYPE_NUMERIC:
						if (DateUtil.isCellDateFormatted(cell)) {
							Date date = cell.getDateCellValue();
							BeanUtils.setProperty(excelData, "field" + (fieldIdx + 1), data);
							data = MyDateUtil.formatToDay(date);

						} else {
							Double dNumericCellValue = cell.getNumericCellValue();
							long lNumericCellValue = dNumericCellValue.longValue();
							data = String.valueOf(lNumericCellValue);
						}
						break;
					default:
						data = "";
						break;
					}

				}
				BeanUtils.setProperty(excelData, "field" + (fieldIdx + 1), data);
			}
			excelDataList.add(excelData);
		}
		return excelDataList;
	}

	/**
	 * 取列名
	 */
	public List<ExcelHeader> getExcelDataHeaderListFromSheet(File file) {
		Sheet sheet;
		try {
			sheet = ExcelUtil.getSheetByForm(file, 0);

			List<ExcelHeader> headerList = new ArrayList<ExcelHeader>();
			Row row = sheet.getRow(0);
			for (Cell cell : row) {
				String header = cell.getRichStringCellValue().getString();
				ExcelHeader excelHeader = new ExcelHeader();
				excelHeader.setName(header);
				headerList.add(excelHeader);
			}
			return headerList;
		} catch (Exception e) {
			logger.info("Exception", e);
			return null;
		}
	}

	/**
	 * 取列名(从输入流中获取)
	 */
	public List<ExcelHeader> getExcelDataHeaderListFromSheetIO(Sheet sheet) {
		// Sheet sheet;
		try {
			// sheet = ExcelUtil.getSheetByFormIO(inputStream, 0);

			List<ExcelHeader> headerList = new ArrayList<ExcelHeader>();
			Row row = sheet.getRow(0);
			for (Cell cell : row) {
				String header = cell.getRichStringCellValue().getString();
				ExcelHeader excelHeader = new ExcelHeader();
				excelHeader.setName(header);
				headerList.add(excelHeader);
			}
			return headerList;
		} catch (Exception e) {
			logger.info("Exception", e);
			return null;
		}
	}

	/**
	 * 取行数
	 * 
	 * @throws IOException
	 */
	public int getExcelDataRowNumFromSheet(File file) throws IOException {
		Sheet sheet = ExcelUtil.getSheetByForm(file, 0);
		return sheet.getLastRowNum();

	}

	/**
	 * 去空行
	 * 
	 * @param excelDataList
	 * @throws NoSuchMethodException
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public List<ExcelData> cleanExcelData(List<ExcelData> excelDataList)
			throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		List<ExcelData> cleanExcelDataList = new ArrayList<>();
		for (int i = 0; i < excelDataList.size(); i++) {
			ExcelData excelData = excelDataList.get(i);
			boolean isBlank = true;
			for (int j = 0; j < 100; j++) {
				String propertyValue = BeanUtils.getProperty(excelData, "field" + j + 1);
				if (StringUtils.isNotBlank(propertyValue)) {
					isBlank = false;
				}
			}
			if (!isBlank) {
				cleanExcelDataList.add(excelData);
			}

		}
		return cleanExcelDataList;

	}

	public static void main(String[] args)
			throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
		InputStream inp = null;
		try {
			inp = new FileInputStream("设备详细型号.xlsx");
			List<ExcelData> excelDataList = new ArrayList<ExcelData>();
			Workbook wb = WorkbookFactory.create(inp);
			Sheet sheet = wb.getSheetAt(0);
			int i = 0;
			for (Row row : sheet) {
				i++;
				if (i == 1) {
					continue;
				}
				ExcelData excelData = new ExcelData();
				for (int fieldIdx = 0; fieldIdx < 100; fieldIdx++) {
					String data = "";
					Cell cell = row.getCell(fieldIdx);
					if (row.getCell(fieldIdx) != null) {
						switch (cell.getCellType()) {
						case Cell.CELL_TYPE_STRING:
							data = cell.getStringCellValue().toString().trim();
							break;
						case Cell.CELL_TYPE_NUMERIC:
							if (DateUtil.isCellDateFormatted(cell)) {
								Date date = cell.getDateCellValue();
								data = MyDateUtil.formatToHHmmss(date);

							} else {
								Double dNumericCellValue = cell.getNumericCellValue();
								long lNumericCellValue = dNumericCellValue.longValue();
								data = String.valueOf(lNumericCellValue);
							}

							break;

						}

					}
					BeanUtils.setProperty(excelData, "field" + (fieldIdx + 1), data);
				}
				excelDataList.add(excelData);
			}
		} catch (FileNotFoundException e) {

			logger.info("Exception", e);
		} catch (InvalidFormatException e) {

			logger.info("Exception", e);
		} catch (IOException e) {

			logger.info("Exception", e);
		} finally {
			try {
				if (inp != null) {
					inp.close();
				}

			} catch (Exception e2) {
				logger.info("Exception", e2);
			}
		}
	}

}
