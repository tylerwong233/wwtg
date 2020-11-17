package com.mr.wwtg.utils.common;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public class InputStreamUtil {
	final static int BUFFER_SIZE = 4096;

	/**
	 * 将InputStream转换成String
	 * 
	 * @param in
	 *            InputStream
	 * @return String
	 * @throws IOException
	 * @throws Exception
	 * 
	 */
	public static String InputStreamTOString(InputStream in) throws IOException {
		String result = null;
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		try {
			byte[] data = new byte[BUFFER_SIZE];
			int count = -1;
			while ((count = in.read(data, 0, BUFFER_SIZE)) != -1) {
				outStream.write(data, 0, count);
			}
			data = null;
			result = new String(outStream.toByteArray(), "UTF-8");
		} finally {
			outStream.close();
		}
		return result;
	}

	/**
	 * 将InputStream转换成某种字符编码的String
	 * 
	 * @param in
	 * @param encoding
	 * @return
	 * @throws IOException
	 * @throws Exception
	 */
	public static String InputStreamTOString(InputStream in, String encoding) throws IOException {
		String result = null;
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		try {
			byte[] data = new byte[BUFFER_SIZE];
			int count = -1;
			while ((count = in.read(data, 0, BUFFER_SIZE)) != -1)
				outStream.write(data, 0, count);
			data = null;
		} finally {
			outStream.close();
		}
		result = new String(outStream.toByteArray(), "ISO-8859-1");
		return result;
	}

	/**
	 * 将String转换成InputStream
	 * 
	 * @param in
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws Exception
	 */
	public static InputStream StringTOInputStream(String in) throws UnsupportedEncodingException {

		ByteArrayInputStream is = new ByteArrayInputStream(in.getBytes("ISO-8859-1"));
		return is;
	}

	/**
	 * 将InputStream转换成byte数组
	 * 
	 * @param in
	 *            InputStream
	 * @return byte[]
	 * @throws IOException
	 */
	public static byte[] InputStreamTOByte(InputStream in) throws IOException {
		byte[] byteArray = null;
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		try {
			byte[] data = new byte[BUFFER_SIZE];
			int count = -1;
			while ((count = in.read(data, 0, BUFFER_SIZE)) != -1)
				outStream.write(data, 0, count);
			data = null;
			byteArray = outStream.toByteArray();
		} finally {
			outStream.close();
		}
		return byteArray;
	}

	/**
	 * 将byte数组转换成InputStream
	 * 
	 * @param in
	 * @return
	 *
	 */
	public static InputStream byteTOInputStream(byte[] in) {

		return new ByteArrayInputStream(in);
	}

	/**
	 * 将byte数组转换成String
	 * 
	 * @param in
	 * @return
	 * @throws Exception
	 */
	public static String byteTOString(byte[] in) throws Exception {

		InputStream is = byteTOInputStream(in);
		return InputStreamTOString(is);
	}
}
