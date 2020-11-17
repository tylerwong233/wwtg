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
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.mr.qdp.utils.common.MyStringUtil;

public class Test {
	public static void main(String[] args) {
		try {
			String entity="Trip";
			String codePath = "C:\\Users\\14090284\\eclipse-workspace\\wwtg\\wwtg-common\\src\\main\\java\\com\\mr\\wwtg\\entity\\"+entity+".java";
			Path p = Paths.get(codePath);
			InputStream in;

			in = Files.newInputStream(p);
			JavaparseUtil javaparser = new JavaparseUtil(in);
			CompilationUnit cu = javaparser.getCompilationUnit();

			ClassOrInterfaceDeclaration classOrInterfaceDeclaration = (ClassOrInterfaceDeclaration) cu.getType(0);
			List<FieldDeclaration> fieldDeclarationList = classOrInterfaceDeclaration.getFields();

			for (FieldDeclaration fieldDeclaration : fieldDeclarationList) {
				try {
					if (!fieldDeclaration.getAnnotationByName("Column").isPresent()) {
						String fd = fieldDeclaration.toString();
						String varName = StringUtils.substringAfterLast(fd, " ");
						varName = StringUtils.remove(varName, ";");
						String annColumn = "@Column(name = \"" + MyStringUtil.fieldToColumn(varName) + "\")";
						System.out.println();
						System.out.println(annColumn);

					}
					Optional<Comment> comment = fieldDeclaration.getComment();
					if (comment.isPresent()) {
						String commentStr = StringUtils.remove(comment.get().toString(), "//");
						commentStr = StringUtils.remove(commentStr, " ");
						String annComment = "@PropertyDef(label =  \"" + commentStr + "\")";
						annComment = StringUtils.remove(annComment, "\r\n");
						System.out.println(annComment);
					}
					fieldDeclaration.removeComment();

					//System.out.println();
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
