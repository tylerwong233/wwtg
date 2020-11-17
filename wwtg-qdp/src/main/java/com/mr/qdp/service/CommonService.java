package com.mr.qdp.service;

import org.springframework.stereotype.Service;

import com.bstek.dorado.annotation.Expose;
import com.bstek.dorado.web.DoradoContext;
import com.bstek.dorado.web.WebConfigure;

@Service
public class CommonService {

	@Expose
	public void changeSkin(String skin) {
		WebConfigure.set(DoradoContext.SESSION, "view.skin", skin);
	}

}
