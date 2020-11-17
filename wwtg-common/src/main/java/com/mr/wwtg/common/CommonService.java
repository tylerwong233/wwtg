package com.mr.wwtg.common;

import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import com.bstek.dorado.view.resolver.ClientRunnableException;
import com.mr.wwtg.utils.common.MyLog;

@Service
public class CommonService {

	private static Logger log = MyLog.get();

	/**
	 * 通知前端-notify
	 */
	public void notifyView(String tip) {
		throw new ClientRunnableException("dorado.widget.NotifyTipManager.notify('" + tip + "');");
	}

	/**
	 * 通知前端-warn
	 */
	public void warnView(String tip) {
		throw new ClientRunnableException("dorado.MessageBox.alert('" + tip + "', { icon: \"WARNING\" });");
	}

	 

}