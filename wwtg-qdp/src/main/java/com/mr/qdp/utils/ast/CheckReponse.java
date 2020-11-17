package com.mr.qdp.utils.ast;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import com.github.javaparser.ast.body.MethodDeclaration;

public class CheckReponse {

	public static void main(String[] args) throws Exception {
		String dir = "D:\\work\\eclipse-workspace\\workspace-rc\\rcsmms-web\\src\\main\\java\\com\\suning\\rcsmms\\controller\\test";
		Path p = Paths.get(dir);
		// 1.遍历包下面所有的文件
		Files.list(p).filter(path -> {
			return !Files.isDirectory(path);
		}).forEach(file -> {
			try {
				// 2. 检查每一个文件
				checkMethod(Files.newInputStream(file));
			} catch (Exception e) {
				e.printStackTrace();
			}
		});
	}

	private static void checkMethod(InputStream in) throws Exception {
		// 3. 获取所有的方法声明
		JavaparseUtil getMethodUtil = new JavaparseUtil(in);
		for (MethodDeclaration m : getMethodUtil.getAllMethod()) {

			String response = m.getBody().toString();
			System.out.println(response);
			/*
			 * // 4. 取得方法体上所有的注解 List<AnnotationExpr> list = m.getAnnotations();
			 * for (AnnotationExpr annotation : list) { // 5. 取得 swagger
			 * ApiOperation注解 if
			 * ("ApiOperation".equalsIgnoreCase(annotation.getName().toString())
			 * ) { List<Node> childNode = annotation.getChildNodes(); // 6.
			 * 继续遍历注解的子节点 for (Node n : childNode) { if (n instanceof
			 * MemberValuePair) { MemberValuePair memberValuePair =
			 * (MemberValuePair) n; // 7. 获取 swagger 的response 名字 if
			 * ("response".equalsIgnoreCase(memberValuePair.getName().toString()
			 * )) { // 8. 比对方法体的response跟swagger 的response是否一致 if
			 * (!memberValuePair.getValue().toString().contains(response)) { //
			 * 9. 打印出声明不一致的swagger注解 System.out.println("method = " +
			 * m.getName() + "; response = " + response + " ; ApiOperation =" +
			 * memberValuePair.getValue()); } } } } } }
			 */
		}
	}

}
