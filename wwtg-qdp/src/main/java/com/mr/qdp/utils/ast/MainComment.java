package com.mr.qdp.utils.ast;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import javax.persistence.Column;

import org.apache.commons.lang3.StringUtils;

import com.bstek.dorado.annotation.PropertyDef;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.mr.qdp.utils.common.MyStringUtil;

public class MainComment {
	public static void main(String[] args) {
		try {
			String codePath = "C:\\Users\\14090284\\Desktop\\A.java";
			Path p = Paths.get(codePath);
			InputStream in;

			in = Files.newInputStream(p);
			JavaparseUtil javaparser = new JavaparseUtil(in);
			CompilationUnit cu = javaparser.getCompilationUnit();

			ClassOrInterfaceDeclaration classOrInterfaceDeclaration = (ClassOrInterfaceDeclaration) cu.getType(0);
			List<FieldDeclaration> fieldDeclarationList = classOrInterfaceDeclaration.getFields();

			for (FieldDeclaration fieldDeclaration : fieldDeclarationList) {
				try {
					Node svuNode = (Node) fieldDeclaration.getChildNodes().get(0);
					String svu = svuNode.toString();
					if (svu.contains("serialVersionUID")) {
						continue;
					}
					Optional<Comment> comment = fieldDeclaration.getComment();

					if (comment.isPresent()) {
						String commentStr = comment.get().toString();
						commentStr = StringUtils.remove(commentStr, "//");
						commentStr = StringUtils.remove(commentStr, " ");
						commentStr = StringUtils.remove(commentStr, "/**");
						commentStr = StringUtils.remove(commentStr, "*/");
						commentStr = StringUtils.remove(commentStr, "*");
						String[] commentArray = StringUtils.split(commentStr, "<br>");

						String lable = commentArray[0];
						lable = StringUtils.remove(lable, "<br>");
						String desc = commentArray[1];
						String annComment = "";
						// 只有label
						if (StringUtils.isBlank(desc)) {
							annComment = "@PropertyDef(label =  \"" + lable + "\")";
						} else {
							annComment = "@PropertyDef(label =  \"" + lable + "\",description =\"" + desc + "\")";
						}
						annComment = StringUtils.remove(annComment, "\r\n");
						System.out.println(annComment);
					}
					fieldDeclaration.removeComment();

					System.out.println(fieldDeclaration.toString());

				} catch (Exception e) {
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
