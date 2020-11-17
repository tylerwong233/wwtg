
package com.mr.qdp.utils.ast;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Set;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.visitor.VoidVisitorAdapter;

public class JavaparseUtil extends VoidVisitorAdapter {
	private CompilationUnit cu;

	private Set<MethodDeclaration> allEmement = new HashSet<>();

	public JavaparseUtil(InputStream in) throws Exception

	{
		try {
			cu = JavaParser.parse(in);
		} finally {
			in.close();
		}
	}

	public JavaparseUtil(String path) {
		try {
			cu = JavaParser.parse(Files.newInputStream(Paths.get(path)));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public CompilationUnit getCompilationUnit() {
		return cu;
	}

	public String getSourceCode() {
		return cu.toString();
	}

	public Set<MethodDeclaration> getAllMethod() {
		this.visit(cu, null);
		return allEmement;
	}

	@Override
	public void visit(MethodDeclaration n, Object arg) {
		allEmement.add(n);
	}
}
