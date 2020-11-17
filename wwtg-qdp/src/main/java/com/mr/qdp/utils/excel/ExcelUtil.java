package com.mr.qdp.utils.excel;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.commons.io.FileUtils;
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

import com.mr.qdp.utils.common.MyStringUtil;

public class ExcelUtil {

	private static final Logger logger = LoggerFactory.getLogger(ExcelUtil.class);

	/**
	 * 从excel中读取sheet
	 * 
	 * @param formFile
	 *            Excel文件
	 * @param sheetIdx
	 *            第一个为0
	 * @return
	 * @throws IOException
	 * @throws Exception
	 */
	public static Sheet getSheetByForm(File file, int sheetIdx) throws IOException {
		Sheet sheet = null;
		InputStream is = null;
		try {
			is = FileUtils.openInputStream(file);
			Workbook wb = WorkbookFactory.create(is);
			sheet = wb.getSheetAt(sheetIdx);
		} catch (Exception e) {
			logger.info("Exception", e);
		} finally {
			if (is != null) {
				is.close();
			}
		}

		return sheet;
	}

	public static Sheet getSheetByFormIO(InputStream inputStream, int sheetIdx)
			throws InvalidFormatException, IOException {
		Workbook wb = WorkbookFactory.create(inputStream);
		Sheet sheet = wb.getSheetAt(sheetIdx);
		return sheet;
	}

	public static void main(String[] args) {

		InputStream inp;
		try {
			inp = new FileInputStream("设备详细型号.xlsx");

			Workbook wb = WorkbookFactory.create(inp);
			Sheet sheet = wb.getSheetAt(0);
			int i = 0;
			// 列
			int j = 0;
			for (Row row : sheet) {
				i++;
				if (i == 1) {
					continue;
				}
				Cell cell = row.getCell(j);
				switch (cell.getCellType()) {
				case Cell.CELL_TYPE_STRING:
					System.out.println(cell.getRichStringCellValue().getString());
					break;
				case Cell.CELL_TYPE_NUMERIC:
					if (DateUtil.isCellDateFormatted(cell)) {
						System.out.println(cell.getDateCellValue());
					} else {
						Double dNumericCellValue = cell.getNumericCellValue();
						long lNumericCellValue = dNumericCellValue.intValue();
						String numericCellValueStr = String.valueOf(lNumericCellValue);
						System.out.println(numericCellValueStr);
					}
					break;
				case Cell.CELL_TYPE_BOOLEAN:
					System.out.println(cell.getBooleanCellValue());
					break;
				case Cell.CELL_TYPE_FORMULA:
					System.out.println(cell.getCellFormula());
					break;
				default:
					System.out.println();
				}
				j++;
				System.out.println();

			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			logger.info("Exception", e);
		} catch (InvalidFormatException e) {
			// TODO Auto-generated catch block
			logger.info("Exception", e);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			logger.info("Exception", e);
		}
	}

	/**
	 * 把EXCEL某列AAA_BBB_CCC批量换成aaaBbbCcc
	 */
	public static void excelToJava(String[] args) {
		File file = new File("input.txt");
		try {
			List<String> nameList = FileUtils.readLines(file);
			for (int i = 0; i < nameList.size(); i++) {
				String str = nameList.get(i).toString();
				if (StringUtils.isBlank(str)) {
					System.out.println("");
					continue;
				}
				char c = str.charAt(0);
				if ((str.getBytes().length == str.length() && Character.isUpperCase(c)) || str.contains("_")) {
					System.out.println(MyStringUtil.columnTofield(str));
				} else {
					System.out.println(str);
				}
			}

		} catch (IOException e) {

			logger.info("Exception", e);
		}

	}
}
