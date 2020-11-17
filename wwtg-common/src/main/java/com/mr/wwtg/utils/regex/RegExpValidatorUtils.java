package com.mr.wwtg.utils.regex;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
/**
 * 正则验证工具类
 * @author
 *
 */
@Component
public class RegExpValidatorUtils {
	
	/**
     * 正则表达式：验证手机号
     */
    public static final String REGEX_MOBILE = "^(\\d{11})$";
	
	private RegExpValidatorUtils(){}
	/**
	* @param regex
	* 正则表达式字符串
	* @param str
	* 要匹配的字符串
	* @return 如果str 符合 regex的正则表达式格式,返回true, 否则返回 false;
	*/
	private static boolean match(String regex, String str) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		return matcher.matches();
	}
	/**
	* 验证非零的正整数
	* 
	* @param 待验证的字符串
	* @return 如果是符合格式的字符串,返回 true,否则为false
	*/
	public static boolean isIntNumber(String str) {
	if(StringUtils.isBlank(str)){
		return false ;
	}
	String regex = "^\\+?[1-9][0-9]*$";
	return match(regex, str);
	}
	
	/**
	 * 验证非零的正整数---改成非静态方法
	 * 
	 * @param 待验证的字符串
	 * @return 如果是符合格式的字符串,返回 true,否则为false
	 */
	public static boolean intNumber(String str) {
		if(StringUtils.isBlank(str)){
			return false ;
		}
		String regex = "^\\+?[1-9][0-9]*$";
		return match(regex, str);
	}
	
	
	/**
	* 验证非负整数
	*/
	public static boolean positiveZeroInteger(String str) {
	if(StringUtils.isBlank(str)){
		return false ;
	}
	String regex = "^\\d+$";
	return match(regex, str);
	}
	
	/**
	* 验证非零的正整数
	*/
	public static boolean positivInteger(String str) {
	if(StringUtils.isBlank(str)){
		return false ;
	}
	String regex = "^\\+?[1-9][0-9]*$";
	return match(regex, str);
	}
	
	/**
	 * 校验n位正整数数字
	 * @param str
	 * @param n
	 * @return
	 */
	public static boolean IsNIntNumber(String str,int n){
		if(StringUtils.isBlank(str)){
			return false;
		}
		String regex="^[0-9]{"+n+"}";
		return  match(regex, str);
	}
	
	   /**
     * 校验手机号
     * 
     * @param mobile
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isMobile(String mobile) {
        return Pattern.matches(REGEX_MOBILE, mobile);
    }
    
    /**
     * 校验字符串是否为数
     * @param str
     * @return
     */
    public boolean isNumeric(String str){ 
    	   Pattern pattern = Pattern.compile("\\d\\.\\d*|[1-9]\\d*|\\d*\\.\\d*|\\d*"); 
    	   Matcher isNum = pattern.matcher(str);
    	   if( !isNum.matches() ){
    	       return false; 
    	   } 
    	   return true; 
    	}
    /**
     * 校验字符串是否为数字
     * @param str
     * @return
     */
    public boolean isNumeric2(String str){ 
    	   Pattern pattern = Pattern.compile("^\\d+$"); 
    	   Matcher isNum = pattern.matcher(str);
    	   if( !isNum.matches() ){
    	       return false; 
    	   } 
    	   return true; 
    	}
	
}
