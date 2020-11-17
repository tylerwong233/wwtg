package com.mr.wwtg.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.mr.wwtg.manage.JpaRepo;

@Repository
public class CommonDao extends JpaRepo {

	public Map<String, String> getRoleByUsername(String userName) {
		try {
			String str1 = "select e.description_,g.nickname_  from bdf3_role e " + "join bdf3_role_granted_authority f on e.id_ = f.role_id_ " + "join bdf3_user g on f.actor_id_ = g.username_ " + "where g.username_ = '" + userName + "'";
			Object[] rows = getMapByNativeSql(str1);
			Map<String, String> map = null;
			if (null != rows) {
				map = new HashMap<String, String>();
				map.put("description", rows[0].toString());
				map.put("name", rows[1].toString());
			}
			return map;
		} catch (Exception e) {
			return null;
		}
	}

}