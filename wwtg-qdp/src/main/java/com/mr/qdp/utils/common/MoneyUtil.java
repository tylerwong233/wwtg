package com.mr.qdp.utils.common;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 金额工具类
 */
public class MoneyUtil {
	private static final Logger logger = LoggerFactory.getLogger(MoneyUtil.class);

	private static final String MONEY_FORMAT = "#,##0.00";
	private static final String LI_MONEY_FORMAT = "#,##0.000";
	private static final String[] CHINESE_NUMBER = { "零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖" };

	private static final String[] CHINESE_NUMBER_UNIT = { "分", "角", "圆", "拾", "佰", "仟", "万", "拾", "佰", "仟", "亿" };

	public static String fen2Yuan(long aLong) {
		DecimalFormat df = new DecimalFormat(MONEY_FORMAT);
		return df.format(aLong / 100.0D);
	}

	public static String li2Yuan(long aLong) {
		DecimalFormat df = new DecimalFormat(LI_MONEY_FORMAT);
		return df.format(aLong / 1000.0D);
	}

	public static String fen2Yuan(String aStr) {
		try {
			return fen2Yuan(Long.parseLong(aStr));
		} catch (Exception e) {
			logger.info("Exception", e);
		}
		return fen2Yuan(0L);
	}

	public static String li2Yuan(String aStr) {
		try {
			return li2Yuan(Long.parseLong(aStr));
		} catch (Exception e) {
			logger.info("Exception", e);
		}
		return li2Yuan(0L);
	}

	public static long yuan2Fen(String aStr) {
		aStr = aStr.replaceAll(",", "");
		String fStr = aStr.replace('.', ' ');
		fStr = fStr.replaceAll(" ", "");
		long money = Long.parseLong(fStr);
		int pointPosition = 0;
		if (aStr.indexOf(".") != -1)
			pointPosition = aStr.length() - aStr.indexOf(".") - 1;
		switch (pointPosition) {
		case 0:
			return money * 100L;
		case 1:
			return money * 10L;
		case 2:
			return money;
		}
		return Long.parseLong(fStr.substring(0, aStr.indexOf(".") + 2));
	}

	public static String yuan2Li(String yuan) {
		long fen = yuan2Fen(yuan);
		long li = fen * 10;
		return String.valueOf(li);

	}

	public static String num2Chinese(String num) {
		String yuanStr = "";
		String fenStr = "";
		int len = 0;

		num = num.replaceAll(",", "");
		try {
			Float.parseFloat(num);
		} catch (Exception e) {
			logger.info("Exception", e);
			return "";
		}

		int dot = num.indexOf('.');
		String fen;
		String yuan;
		if (dot < 0) {
			yuan = num;
			fen = "00";
		} else {
			yuan = num.substring(0, dot);
			fen = num.substring(dot + 1);
		}

		if (fen.length() == 1)
			fen = fen + "0";
		else {
			fen = fen.substring(0, 2);
		}

		if (Integer.parseInt(fen) != 0) {
			len = fen.length();
			for (int i = 0; i < len; i++) {
				int pos = Integer.parseInt(String.valueOf(fen.charAt(len - 1 - i)));

				fenStr = CHINESE_NUMBER[pos] + CHINESE_NUMBER_UNIT[i] + fenStr;
			}
		} else {
			fenStr = "整";
		}

		if (yuan.charAt(0) == '-') {
			yuan = yuan.substring(1);
		}

		if (yuan.length() >= 9) {
			yuan = yuan.substring(yuan.length() - 9);
		}

		yuan = String.valueOf(Integer.parseInt(yuan));

		len = yuan.length();

		if (yuan.equals("0")) {
			yuanStr = "零元";
			len = 0;
		}

		boolean zeroFlag1 = false;
		boolean zeroFlag2 = false;

		boolean prevIsZero = false;

		for (int i = 0; i < len; i++) {
			int pos = Integer.parseInt(String.valueOf(yuan.charAt(len - 1 - i)));

			if (pos != 0) {
				if ((i > 0) && (i < 5)) {
					if (zeroFlag1) {
						yuanStr = CHINESE_NUMBER[pos] + CHINESE_NUMBER_UNIT[(i + 2)] + CHINESE_NUMBER_UNIT[2] + yuanStr;
					} else {
						yuanStr = CHINESE_NUMBER[pos] + CHINESE_NUMBER_UNIT[(i + 2)] + yuanStr;
					}

					zeroFlag1 = false;
				} else if ((i >= 5) && (i < 9)) {
					if (zeroFlag2) {
						yuanStr = CHINESE_NUMBER[pos] + CHINESE_NUMBER_UNIT[(i + 2)] + CHINESE_NUMBER_UNIT[6] + yuanStr;
					} else {
						yuanStr = CHINESE_NUMBER[pos] + CHINESE_NUMBER_UNIT[(i + 2)] + yuanStr;
					}

					zeroFlag2 = false;
				} else {
					yuanStr = CHINESE_NUMBER[pos] + CHINESE_NUMBER_UNIT[(i + 2)] + yuanStr;
				}

				prevIsZero = false;
			} else {
				if (i == 0) {
					zeroFlag1 = true;
				}

				if (i == 4) {
					zeroFlag2 = true;
				}

				if ((!zeroFlag1) && (!zeroFlag2) && (!prevIsZero)) {
					yuanStr = CHINESE_NUMBER[pos] + yuanStr;
				}
				prevIsZero = true;
			}

		}

		return yuanStr + fenStr;
	}

	public static void main1(String[] args) {
		long result = yuan2Fen("11.909");
		System.out.print(result);
	}

	/**
	 * 判断金额是否是大于0的,精确到2位小数的数字或整数,单位是元
	 */
	public static boolean isYuan(String money) {
		Pattern p = Pattern.compile("(([1-9][0-9]*)|([0]))(\\.[0-9]?[1-9])?");
		Matcher m = p.matcher(money);
		boolean b = m.matches();
		return b;
	}

	/**
	 * 分(Long)转元
	 */
	public static String fenToYuan(Long fen) {
		if (null == fen) {
			return "";
		} else {
			Double tmpValue = fen.doubleValue() / 100;
			String result = String.valueOf(tmpValue);
			return result;
		}
	}

	/**
	 * 分(String)转元
	 */
	public static String fenToYuan(String fen) {
		if (StringUtils.isBlank(fen)) {
			return "";
		} else if ("".equals(fen)) {
			return "";
		} else {
			Double tmpValue = Long.valueOf(fen).doubleValue() / 100;
			String result = String.valueOf(tmpValue);
			return result;
		}
	}

	/**
	 * 元转分
	 */
	public static Long yuanToFen(String yuan) {
		if (StringUtils.isBlank(yuan)) {
			return 0L;
		} else if (yuan.equals(0) || yuan.equals(0.0)) {
			return 0L;
		} else {
			Double tmpValue = Double.parseDouble(yuan) * 100;
			Long result = Math.round(tmpValue);
			return result;
		}
	}

	public static void main(String[] args) {
		System.out.println(MoneyUtil.yuan2Li("119.01"));

	}

	private static final int DEF_DIV_SCALE = 10; // 这个类不能实例化

	/**
	 * 提供精确的加法运算。
	 * 
	 * @param v1
	 *            被加数
	 * @param v2
	 *            加数
	 * @return 两个参数的和
	 */
	public static double add(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.add(b2).doubleValue();
	}

	/**
	 * 提供精确的减法运算。
	 * 
	 * @param v1
	 *            被减数
	 * @param v2
	 *            减数
	 * @return 两个参数的差
	 */
	public static double sub(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.subtract(b2).doubleValue();
	}

	/**
	 * 提供精确的乘法运算。
	 * 
	 * @param v1
	 *            被乘数
	 * @param v2
	 *            乘数
	 * @return 两个参数的积
	 */
	public static double mul(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.multiply(b2).doubleValue();
	}

	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，精确到 小数点以后10位，以后的数字四舍五入。
	 * 
	 * @param v1
	 *            被除数
	 * @param v2
	 *            除数
	 * @return 两个参数的商
	 */
	public static double div(double v1, double v2) {
		return div(v1, v2, DEF_DIV_SCALE);
	}

	/**
	 * 提供（相对）精确的除法运算。当发生除不尽的情况时，由scale参数指 定精度，以后的数字四舍五入。
	 * 
	 * @param v1
	 *            被除数
	 * @param v2
	 *            除数
	 * @param scale
	 *            表示表示需要精确到小数点以后几位。
	 * @return 两个参数的商
	 */
	public static double div(double v1, double v2, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException("The scale must be a positive integer or zero");
		}
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.divide(b2, scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	/**
	 * 提供精确的小数位四舍五入处理。
	 * 
	 * @param v
	 *            需要四舍五入的数字
	 * @param scale
	 *            小数点后保留几位
	 * @return 四舍五入后的结果
	 */
	public static double round(double v, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException("The scale must be a positive integer or zero");
		}
		BigDecimal b = new BigDecimal(Double.toString(v));
		BigDecimal one = new BigDecimal("1");
		return b.divide(one, scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

}
