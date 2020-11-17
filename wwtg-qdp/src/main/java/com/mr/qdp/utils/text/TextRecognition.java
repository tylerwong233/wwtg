package com.mr.qdp.utils.text;

/**
 * java.util.Scanner是Java5的新特征，主要功能是简化文本扫描。
 * 这个类最实用的地方表现在获取控制台输入，
 * 详见Java API文档。
 */
import java.util.Scanner;

/**
 * 对于输入内容逐个字符进行类型的识别,利用java.util.Scanner获取输入内容.
 * 此类仅作为测试使用,可在此基础上进行扩展,如控制网站页面上输出内容长度的限制,避免英文等内容与汉字造成参差感.
 * 另外该识别方式只是其中一种,来源是参考网络中的见容,
 * 不过实现方法有很多种,仁者见仁了,以前做标签时遇到过相关问题,是将字符串拆成字符,再转成byte类型,
 * 如果高位为负数,那么一定是汉字了,数字字母等可以使用正则来判定,也可以用switch来做,不过这样感觉挺累的, 不如直接用别人给写好的了,嘿嘿~~
 * 
 * @author Administrator
 * 
 */
public class TextRecognition {
	public static void main(String[] args) {
		/**
		 * System.in 是PrintStream的一个实例，参见PrintStream的方法。 只能
		 * 按字节读取。因此默认情况下，无法读取char数据。 你可以使用 InputStreamReader 来包装
		 * System.in对象，这样就可以 读取到 char类型了。
		 */
		Scanner scanner = new Scanner(System.in);
		String input = scanner.next();
		// 测试字符串,可以不从终端输入.
		// String input = "djkfhkasdfa322421";
		/**
		 * 将字符串以字符的形式逐个进行判断,以达到汉字数字字母其它输入的识别
		 */
		for (char c : input.toCharArray()) {
			// 调用识别函数
			charDistinguish(c);
		}
	}

	/**
	 * 字符类型识别函数
	 * 
	 * @param ch
	 */
	static void charDistinguish(char ch) {
		// 汉字
		if (Character.getType(ch) == Character.OTHER_LETTER) {
			System.out.println("chinese_leter:" + ch);
		}
		// 数字
		else if (Character.isDigit(ch)) {
			System.out.println("digit:" + ch);
		}
		// 字母
		else if (Character.isLetter(ch)) {
			System.out.println("letter:" + ch);
		}
		// 其它字符
		else {
			System.out.println("others:" + ch);
		}
	}
}
