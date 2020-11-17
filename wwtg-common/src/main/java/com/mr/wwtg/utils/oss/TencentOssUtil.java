package com.mr.wwtg.utils.oss;

import java.io.File;

import com.mr.wwtg.utils.common.MyStringUtil;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.exception.CosClientException;
import com.qcloud.cos.exception.CosServiceException;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.model.StorageClass;
import com.qcloud.cos.region.Region;

public class TencentOssUtil {
	private static final String SECRET_ID = "AKIDN0Vr21hQtBNwLY8QJm7KLAye9SZd41Tj";
	private static final String SECRET_KEY = "Fbox31scBZnqrlV3Y6VikvzwhHfr4Oaa";
	private static final String REGION = "ap-shanghai";
	private static final String BUCKET_NAME = "wtgg-1257598185";
	private static String URL = "https://wtgg-1257598185.cos.ap-shanghai.myqcloud.com/";

	// https://wtgg-1257598185.cos.ap-shanghai.myqcloud.com/attachment/merchant/02bdcb07d5f44849972ea5a4679b6653.ora
	// 将本地文件上传到COS
	private static String uploadFile(String dir, File localFile, String fileName) {
		// 使用uuid和文件名后缀拼接
		String uuid = MyStringUtil.getUUID();
		int index = fileName.lastIndexOf(".");
		String postfix = "";
		// 截取文件名后缀
		postfix = fileName.substring(index);

		// 拼接上传地址url的文件名 例如：uuid.xlsx
		String newFileName = uuid + postfix;

		String result = "";
		COSCredentials cred = new BasicCOSCredentials(SECRET_ID, SECRET_KEY);
		ClientConfig clientConfig = new ClientConfig(new Region(REGION));
		COSClient cosclient = new COSClient(cred, clientConfig);
		String key = dir + "/" + newFileName;
		PutObjectRequest putObjectRequest = new PutObjectRequest(BUCKET_NAME, key, localFile);
		putObjectRequest.setStorageClass(StorageClass.Standard);
		try {
			cosclient.putObject(putObjectRequest);
			result = URL + key;
			return result;
		} catch (CosServiceException e) {
			e.printStackTrace();
		} catch (CosClientException e) {
			e.printStackTrace();
		}

		// 关闭客户端
		cosclient.shutdown();
		return result;
	} 
 
	public static String uploadAttachment(String dir,File file, String newFileName) { 
		String url = uploadFile(dir, file, newFileName);
		return url;
	}
	
	public static String uploadImage(String dir,File file, String newFileName) { 
		String url = uploadFile(dir, file, newFileName);
		return url;
	}
}
