package com.mr.qdp.manage;

public interface SysConstants {

	public static final String WEBSERVICE_URL = "127.0.0.1:9999";

	/**
	 * 任务配置
	 * 
	 */
	public interface TASK_JOB {
		/**
		 * 开关
		 */
		public interface TASK_RULE_ISON {
			/**
			 * 1:开
			 */
			public static final int ON = 1;
			/**
			 * 2:关
			 */
			public static final int OFF = 2;

		}

		/**
		 * 状态
		 */
		public interface STATUS {
			/**
			 * 1:待启动
			 */
			public static final String PRE_START = "1";
			/**
			 * 2:已启动
			 */
			public static final String START = "2";
			/**
			 * 3:暂停
			 */
			public static final String PAUSE = "3";
			/**
			 * 4：已完成
			 */
			public static final String FINISH = "4";
			/**
			 * 5：已过期
			 * 
			 */
			public static final String EXPIRE = "5";
		}

		/**
		 * 运行状态
		 */
		public interface RUN_STATUS {
			/**
			 * 1:未运行
			 */
			public static final String NOT_RUNNING = "1";
			/**
			 * 2:已运行
			 */
			public static final String RUNNING = "2";
			/**
			 * 3:完成
			 */
			public static final String FINISH = "3";
		}
	}

	/**
	 * 告警
	 */
	public interface ALARM {
		public static final int MAX_LEVEL = 5;

		/**
		 * 级别
		 */
		public interface LEVEL {
			public static final String ONE = "1";
			public static final String TWO = "2";
			public static final String THREE = "3";
			public static final String FOUR = "4";
			public static final String FIVE = "5";
		}

		/**
		 * 状态
		 */
		public interface STATUS {
			// 生效
			public static final String ACTIVE = "1";
			// 未生效
			public static final String INACTIVE = "2";
		}

		/**
		 * 类型
		 */
		public interface TYPE {
			public static final int OPERATION_INT = 1;
			public static final String OPERATION = "运维";
			public static final int BIZ_INT = 2;
			public static final String BIZ = "业务";
		}

		/**
		 * 确认状态
		 */
		public interface CONFIRM_STATUS {
			/**
			 * 已确认
			 */
			public static final String CONFIRMED = "1";
			/**
			 * 未确认
			 */
			public static final String UNCONFIRMED = "2";
		}

		/**
		 * 告警信息维度
		 */
		public interface INDICATOR_TYPE {
			/**
			 * 用户
			 */
			public static final String 用户 = "1";
			/**
			 * 客户
			 */
			public static final String 客户 = "2";
			/**
			 * 代理商
			 */
			public static final String 代理商 = "3";
		}

	}

	/**
	 * 生效状态
	 */
	public interface ACTIVE {

		/**
		 * 状态
		 */
		public interface STATUS {
			// 生效
			public static final String ACTIVE = "1";
			// 关
			public static final String INACTIVE = "2";
		}

	}

	public interface ENTITY {
		/**
		 * 记录状态
		 */
		public interface STATUS {

			public static final String NORMAL = "正常";
			public static final String 逻辑删除 = "del";
		}

		/**
		 * 记录条数
		 */
		public interface COUNT {
			public static final int NUMBER = 5000;
		}
	}

	/**
	 * 支付记录
	 */
	public interface PAY_RECORD {
		/**
		 * 交易状态
		 */
		public interface STATUS {
			/**
			 * 0:成功
			 */
			public static final int 成功 = 0;
			/**
			 * 99:失败
			 */
			public static final int 失败 = 99;

		}

	}

	/**
	 * 是否
	 */
	public interface YES_NO {

		public static final int YES = 1;
		// 关
		public static final int NO = 0;

	}

	/**
	 * 是否
	 */
	public interface SUCCESS {

		public static final String code = "000000";

	}

	/**
	 * 总部大区
	 *
	 */
	public interface RRGION_SALE {
		public interface CODE {
			public static final String ALL = "总部";
			public static final String COUNTRY_WIDE = "99999";
			public static final String FLAG = "withAll";
		}
	}

	/**
	 * 事业部
	 *
	 */
	public interface BU {
		public interface CODE {
			public static final String ALL = "全品类";
			public static final String FLAG = "withAll";
		}
	}
}
