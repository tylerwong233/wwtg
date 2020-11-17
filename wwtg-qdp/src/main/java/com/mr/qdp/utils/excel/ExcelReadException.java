package com.mr.qdp.utils.excel;

public class ExcelReadException extends Exception {

	String err = "";

	/* 1 必填项为空 */
	String REQUIRED_ERR = "fail.batch.excel.required_err";

	/* 2 存在重复项 */
	String DUPLICATE = "fail.batch.excel.duplicate";

	/* 报错行号 */
	int rowErr;

	public ExcelReadException(int type, int rowErr) {
		switch (type) {
		case 1:
			this.err = REQUIRED_ERR;
			this.rowErr = rowErr + 1;
			break;
		case 2:
			this.err = DUPLICATE;
			this.rowErr = rowErr + 1;
			break;

		}
	}

	public String getErr() {
		return err;
	}

	public int getRowErr() {
		return rowErr;
	}
}
