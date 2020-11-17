package com.mr.wwtg.manage;

public interface BizConstants {

	/**
	 * 保存订单
	 */
	public interface SAVE_ORDER {
		/**
		 * 订单状态
		 */
		public interface STATUS {
			/**
			 * 存草稿
			 */
			public static final String SAVE_DRAFT = "1";
			/**
			 * 存正式
			 */
			public static final String SAVE_FORMAL = "2";
		}
	}

	/**
	 * 订单
	 */
	public interface ORDER {
		/**
		 * 订单状态
		 */
		public interface ORDER_STATUS {
			/**
			 * 草稿
			 */
			public static final String DRAFT = "1";
			/**
			 * 待核实
			 */
			public static final String AUDITING = "2";
			/**
			 * 已核实
			 */
			public static final String AUDITED = "3";
			/**
			 * 已取消
			 */
			public static final String CANCELED = "4";
			/**
			 * 已驳回
			 */
			public static final String NO_PASS = "5";

		}

		/**
		 * 商户结算单状态
		 */
		public interface MERCHANT_SETTLEMEMT_STATUS {
			/**
			 * 待结算
			 */
			public static final String SETTLE_WAITING = "1";
			/**
			 * 已结算
			 */
			public static final String SETTLED = "2";
			/**
			 * 未生成
			 */
			public static final String UNREADY = "3";
			/**
			 * 已失效
			 */
			public static final String DISABLED = "4";
			/**
			 * 已生成
			 */
			public static final String READY = "5";

		}

		/**
		 * 旅行社结算单状态
		 */
		public interface AGENCY_SETTLEMENT_STATUS {
			/**
			 * 待结算
			 */
			public static final String SETTLE_WAITING = "1";
			/**
			 * 已结算
			 */
			public static final String SETTLED = "2";
			/**
			 * 未生成
			 */
			public static final String UNREADY = "3";
			/**
			 * 已失效
			 */
			public static final String DISABLED = "4";
		}

		/**
		 * 订单类型
		 */
		public interface ORDER_TYPE {
			/**
			 * 正向订单-订单返佣
			 */
			public static final String FORWARD = "1";
			/**
			 * 逆向订单-订单退款
			 */
			public static final String BACKWARD = "2";
			/**
			 * 正向订单-补单佣金
			 */
			public static final String SUPPLY = "3";
			/**
			 * 提现订单
			 */
			public static final String CASH = "4";
		}

		/**
		 * 订单账务状态
		 */
		public interface ORDER_STATUS_BILL {
			/**
			 * 待核实 1
			 */
			public static final String AUDITING = "1";
			/**
			 * 已核实-待结算 2
			 */
			public static final String AUDITED_ARRIVING = "2";
			/**
			 * 已核实->已结算 3
			 */
			public static final String AUDITED_ARRIVED = "3";
			/**
			 * 失效 4
			 */
			public static final String DISABLED = "4";
			/**
			 * 待修改 5
			 */
			public static final String NO_PASS = "5";
			/**
			 * 已审核 6
			 */
			public static final String AUDITED = "6";
			/**
			 * 已完成 7
			 */
			public static final String DONE = "7";
		}

		/**
		 * 银行账户类型
		 */
		public interface BANK_ACCOUNT_TYPE {
			/**
			 * 1 英国
			 */
			public static final String UK = "1";
			/**
			 * 2 其他
			 */
			public static final String OTHER = "2";

		}

	}

	/**
	 * 导游提现申请
	 */
	public interface GUIDE_WITHDRAW_APPLY {
		/**
		 * 状态
		 */
		public interface STATUS {
			/**
			 * 待结算
			 */
			public static final String SETTLE_WAITING = "1";
			/**
			 * 已结算
			 */
			public static final String SETTLED = "2";
			/**
			 * 已失效
			 */
			public static final String DISABLED = "3";
		}
	}

	/**
	 * 操作类型
	 */
	public interface OPERATION {

		public interface ORDER {
			/**
			 * 订单-新增
			 */
			public static final String ADD = "1";
			/**
			 * 订单-修改
			 */
			public static final String MODIFY = "2";
			/**
			 * 订单-核实通过
			 */
			public static final String AUDIT_PASS = "3";
			/**
			 * 订单-核实不通过
			 */
			public static final String AUDIT_NO_PASS = "33";
			/**
			 * 商户-已结算
			 */
			public static final String MERCHANT_SETTLED = "4";
			/**
			 * 订单-退款
			 */
			public static final String REFUND = "5";
			/**
			 * 订单-失效
			 */
			public static final String CANCEL = "6";
			/**
			 * 商户-待结算
			 */
			public static final String MERCHANT_SETTLE_WAITING = "7";
			/**
			 * 旅行社-待结算
			 */
			public static final String AGENCY_SETTLE_WAITING = "8";
			/**
			 * 旅行社-已结算
			 */
			public static final String AGENCY_SETTLED = "9";
			/**
			 * 商户-结算取消
			 */
			public static final String MERCHANT_SETTLE_CANCEL = "";
			/**
			 * 旅行社-结算取消
			 */
			public static final String AGENCY_SETTLE_CANCEL = "11";

		}

		public interface SETTLEMENT {
			/**
			 * 结算
			 */
			public static final String SETTLED = "1";

		}
	}

	/**
	 * 结算单
	 */
	public interface SETTLEMEMT {
		/**
		 * 类型
		 */
		public interface TYPE {
			/**
			 * 活动结算单
			 */
			public static final String ACTIVITY = "1";
			/**
			 * 返佣结算单
			 */
			public static final String COMMISSION = "2";
		}

		/**
		 * 状态
		 */
		public interface STATUS {
			/**
			 * 待结算
			 */
			public static final String SETTLE_WAITING = "1";
			/**
			 * 已结算
			 */
			public static final String SETTLED = "2";
			/**
			 * 未生成
			 */
			public static final String UNREADY = "3";
			/**
			 * 已失效
			 */
			public static final String DISABLED = "4";
		}
	}

	/**
	 * 是否
	 */
	public interface YES_NO {
		/**
		 * 是
		 */
		public static final String YES = "1";
		/**
		 * 否
		 */
		public static final String NO = "2";
	}

	/**
	 * 活动
	 */
	public interface ACTIVITY {
		/**
		 * 状态
		 */
		public interface STATUS {
			/**
			 * 未生效
			 */
			public static final String UNREADY = "1";
			/**
			 * 进行中
			 */
			public static final String START = "2";
			/**
			 * 已失效
			 */
			public static final String END = "3";
		}

		/**
		 * 类型
		 */
		public interface TYPE {
			/**
			 * 折扣券
			 */
			public static final String COUPON = "2";
			/**
			 * 赠品
			 */
			public static final String PRESENT = "3";
			/**
			 * 现金
			 */
			public static final String MONEY = "1";
		}
	}

	/**
	 * 会话令牌
	 */
	public interface TOKEN {
		/**
		 * 类型
		 */
		public interface TYPE {
			/**
			 * 微信
			 */
			public static final String WXAPP = "1";
		}

	}

	/**
	 * 会员角色
	 */
	public interface MEMBER {
		/**
		 * 类型
		 */
		public interface ROLE_TYPE {
			/**
			 * 导游
			 */
			public static final String GUIDE = "1";
			/**
			 * 营业员
			 */
			public static final String STORE_STAFF = "2";
			/**
			 * 游客
			 */
			public static final String VISITOR = "3";
			/**
			 * 系统管理员
			 */
			public static final String SYSTEM = "4";
		}

		/**
		 * 访问类型
		 */
		public interface ACCESS_TYPE {
			/**
			 * 初访 1
			 */
			public static final String FIRST = "1";
			/**
			 * 登录 2
			 */
			public static final String SECOND = "2";
			/**
			 * 签到 3
			 */
			public static final String THIRD = "3";
		}
	}

	/**
	 * 流水类型
	 */
	public interface FLOW {
		/**
		 * 类型
		 */
		public interface TYPE {
			/**
			 * 1 返佣-订单核实-通过
			 */
			public static final String AUDIT_PASS = "1";
			/**
			 * 11 订单核实-不通过
			 */
			public static final String AUDIT_NO_PASS = "11";
			/**
			 * 2 活动返佣结算
			 */
			public static final String ACTIVITY = "2";
			/**
			 * 3 退款核实
			 */
			public static final String REFUND = "3";
			/**
			 * 4 提现结算
			 */
			public static final String WITHDRAW = "4";
			/**
			 * 5 补单佣金结算
			 */
			public static final String SUPPLE = "5";
			/**
			 * 6 订单返佣结算
			 */
			public static final String SETTLED = "6";
			/**
			 * 7 提现-订单创建
			 */
			public static final String CASH_CREATE = "7";
			/**
			 * 7 提现-订单核实-通过
			 */
			public static final String CASH_AUDIT_PASS = "8";

		}

	}

	/**
	 * 商户
	 */
	public interface MERCHANT {

		/**
		 * 默认编码
		 */
		public interface CODE {
			/**
			 * 提现
			 */
			public static final String CASH = MERCHANT.MERCHANT_TYPE.CASH + "001";

		}

		/**
		 * 商户类型
		 */
		public interface MERCHANT_TYPE {
			/**
			 * 品牌商(Brand dealer)
			 */
			public static final String BRAND_DEALER = "01";
			/**
			 * 商场(Market)
			 */
			public static final String MARKET = "02";
			/**
			 * 提现商户
			 */
			public static final String CASH = "03";

		}

		/**
		 * 与旅行社签约状态
		 */
		public interface AGENCY_CONTRACTED_STATUS {
			/**
			 * 1 正常
			 */
			public static final String ACTIVE = "1";
			/**
			 * 2 失效
			 */
			public static final String INACTIVE = "2";

		}

		/**
		 * 区域
		 */
		public interface REGION {
			/**
			 * 1 英国
			 */
			public static final String UK = "1";
			/**
			 * 2 邦德街
			 */
			public static final String BOND_STREET = "2";

		}

	}

	/**
	 * 旅行团
	 */
	public interface TOUR_GROUP {
		/**
		 * 状态
		 */
		public interface STATUS {
			/**
			 * 未生效
			 */
			public static final String UNREADY = "1";
			/**
			 * 进行中
			 */
			public static final String START = "2";
			/**
			 * 已结束
			 */
			public static final String END = "3";
		}
	}

	/**
	 * 广告
	 */
	public interface ADVERT {
		/**
		 * 激活状态
		 */
		public interface ACTIVE_STATUS {
			/**
			 * 未生效
			 */
			public static final String UNREADY = "1";
			/**
			 * 进行中
			 */
			public static final String START = "2";
			/**
			 * 已失效
			 */
			public static final String END = "3";
		}

	}

	/**
	 * 公告
	 */
	public interface NOTICE {
		/**
		 * 发送对象
		 */
		public interface SEND_OBJECT {
			/**
			 * 所有导游
			 */
			public static final String GUIDE_ALL = "1";
			/**
			 * 指定导游
			 */
			public static final String GUIDE_SOME = "2";
			/**
			 * 所有人
			 */
			public static final String ALL = "3";
			/**
			 * 所有游客
			 */
			public static final String VISITOR_ALL = "4";
			/**
			 * 所有营业员
			 */
			public static final String STORE_STAFF_ALL = "5";
			/**
			 * 指定人
			 */
			public static final String SOME = "6";
		}

		/**
		 * 接受对象
		 */
		public interface ACCEPT_OBJECT {
			/**
			 * 导游的个人中心
			 */
			public static final String GUIDE_PERSONAL_CENTER = "1";
			/**
			 * 营业员的个人中心
			 */
			public static final String STAFF_PERSONAL_CENTER = "2";
			/**
			 * 游客的个人中心
			 */
			public static final String VISITOR_PERSONAL_CENTER = "3";
			/**
			 * 导游的导游中心
			 */
			public static final String GUIDE_GUIDE_CENTER = "4";
			/**
			 * 营业员的营业员中心
			 */
			public static final String STAFF_STAFF_CENTER = "5";
		}

		/**
		 * 激活状态
		 */
		public interface ACTIVE_STATUS {
			/**
			 * 未生效
			 */
			public static final String UNREADY = "1";
			/**
			 * 进行中
			 */
			public static final String START = "2";
			/**
			 * 已失效
			 */
			public static final String END = "3";
		}

	}

	/**
	 * 公告阅读详情
	 */
	public interface NOTICE_ITEM {

		/**
		 * 阅读状态
		 */
		public interface READ_STATUS {
			/**
			 * 待阅读
			 */
			public static final String NOT_READ = "1";
			/**
			 * 已阅读
			 */
			public static final String READ_DONE = "2";
		}

	}

	/**
	 * 收藏
	 */
	public interface BOOKMARK {

		/**
		 * 类型
		 */
		public interface TYPE {
			/**
			 * 消息
			 */
			public static final String NOTICE_ALL = "2";
			/**
			 * 文章
			 */
			public static final String ADVERT = "3";
			/**
			 * 品牌
			 */
			public static final String MERCHANT = "4";
			/**
			 * 店铺
			 */
			public static final String STORE = "5";
			/**
			 * 微信卡券
			 */
			public static final String CARD = "6";
			/**
			 * 系统礼券
			 */
			public static final String COUPON = "7";
			/**
			 * 其它
			 */
			public static final String OTHER = "9";
			/**
			 * 产品预约
			 */
			public static final String APPOINTMENT = "1415";

		}

		/**
		 * 状态
		 */
		public interface STATUS {
			/**
			 * 未收藏/取消收藏
			 */
			public static final String NOT_MARK = "1";
			/**
			 * 已收藏/增加收藏
			 */
			public static final String MARK_DONE = "2";
		}
	}

	/**
	 * 发现首页配置
	 */
	public interface DISCOVERY_ITEM {

		/**
		 * 类型
		 */
		public interface TYPE {
			/**
			 * Banner
			 */
			public static final String BANNER = "1";
			/**
			 * 分类
			 */
			public static final String CATELOG = "2";
			/**
			 * 推荐
			 */
			public static final String RECOMMEND = "3";
		}

		/**
		 * 跳转类型
		 */
		public interface LINK_TYPE {
			/**
			 * 文章
			 */
			public static final String CONTENT = "3";
			/**
			 * 品牌
			 */
			public static final String MERCHANT = "4";
			/**
			 * 店铺
			 */
			public static final String STORE = "5";
			/**
			 * 微信卡券
			 */
			public static final String CARD_WX = "6";
			/**
			 * 系统礼券
			 */
			public static final String CARD_SYSTEM = "7";
			/**
			 * H5链接
			 */
			public static final String H5 = "8";
		}
	}

	/**
	 * 汇率
	 */
	public interface EX_RATE {

		/**
		 * 默认1
		 */
		public static final String DEFAULT = "1";

	}

	/**
	 * 卡券
	 */
	public interface CARD {
		/**
		 * 种类
		 */
		public interface CATEGORY {
			/**
			 * 微信卡券
			 */
			public static final String CARD_WX = "1";
			/**
			 * 系统微信卡券
			 */
			public static final String CARD_SYSTEM = "2";

		}

		/**
		 * 生效状态
		 */
		public interface ACTIVE_STATUS {
			/**
			 * 待生效
			 */
			public static final String UNREADY = "1";
			/**
			 * 生效中
			 */
			public static final String START = "2";
			/**
			 * 已过期
			 */
			public static final String END = "3";
			/**
			 * 已终止
			 */
			public static final String STOP = "4";
		}

		/**
		 * 领取生效状态
		 */
		public interface DRAW_ACTIVE_STATUS {
			/**
			 * 待生效
			 */
			public static final String UNREADY = "1";
			/**
			 * 生效中
			 */
			public static final String START = "2";
			/**
			 * 已过期
			 */
			public static final String END = "3";
			/**
			 * 已终止
			 */
			public static final String STOP = "4";
		}
	}

	/**
	 * 预约
	 */
	public interface APPOINTMENT {

		/**
		 * 类型
		 */
		public interface TYPE {
			/**
			 * 产品预约
			 */
			public static final String PRODUCT = "1";
			/**
			 * 服务预约
			 */
			public static final String SERVICE = "2";
		}

		/**
		 * 生效状态
		 */
		public interface ACTIVE_STATUS {
			/**
			 * 待生效
			 */
			public static final String UNREADY = "1";
			/**
			 * 生效中-可使用
			 */
			public static final String START = "2";
			/**
			 * 已过期-已失效
			 */
			public static final String END = "3";
			/**
			 * 已终止-已使用
			 */
			public static final String STOP = "4";
		}

	}

	/**
	 * 预约记录
	 */
	public interface APPOINTMENT_RECORD {

		/**
		 * 生效状态
		 */
		public interface ACTIVE_STATUS {
			/**
			 * 进行中
			 */
			public static final String PROCESSING = "1";
			/**
			 * 已受理
			 */
			public static final String APPLIED = "2";
			/**
			 * 已失效
			 */
			public static final String INACTIVE = "3";
			/**
			 * 已删除
			 */
			public static final String DELETED = "4";
		}

	}

	/**
	 * 已阅
	 */
	public interface READMARK {

		/**
		 * GET类型
		 */
		public interface GET_TYPE {
			/**
			 * 我的
			 */
			public static final String MY = "1";
			/**
			 * 导游中心-订单
			 */
			public static final String ORDER_GUIDE_CENTER = "11";
			/**
			 * 导游中心-旅行团
			 */
			public static final String TOURGROUP_GUIDE_CENTER = "12";
			/**
			 * 导游中心-消息
			 */
			public static final String NOTICE_GUIDE_CENTER = "13";
			/**
			 * 导游中心-会员
			 */
			public static final String MEMBER_GUIDE_CENTER = "14";
			/**
			 * 个人中心-礼券
			 */
			public static final String CARD_PERSONAL_CENTER = "21";
			/**
			 * 个人中心-收藏
			 */
			public static final String BOOKMARK_PERSONAL_CENTER = "22";
			/**
			 * 个人中心-消息
			 */
			public static final String NOTICE_PERSONAL_CENTER = "23";

		}

		/**
		 * POST类型
		 */
		public interface POST_TYPE {
			/**
			 * 消息
			 */
			public static final String NOTICE_ALL = "2";
			/**
			 * 文章
			 */
			public static final String ADVERT = "3";
			/**
			 * 品牌
			 */
			public static final String MERCHANT = "4";
			/**
			 * 店铺
			 */
			public static final String STORE = "5";
			/**
			 * 微信卡券
			 */
			public static final String CARD = "6";
			/**
			 * 系统礼券
			 */
			public static final String COUPON = "7";
			/**
			 * 其它
			 */
			public static final String OTHER = "9";
			/**
			 * 订单
			 */
			public static final String ORDER = "10";
			/**
			 * 旅行团
			 */
			public static final String TOURGROUP = "11";
			/**
			 * 会员
			 */
			public static final String MEMBER = "12";
			/**
			 * 收藏
			 */
			public static final String BOOKMARK = "13";
			/**
			 * 产品预约
			 */
			public static final String APPOINTMENT_PRODCUT = "14";
			/**
			 * 服务预约
			 */
			public static final String APPOINTMENT_SERVICE = "15";

		}
	}
	
	/**
	 * 支付记录
	 */
	public interface PAY_RECORD {

		/**
		 * 支付状态
		 */
		public interface PAY_STATUS {
			/**
			 * 待支付
			 */
			public static final String READY = "1";
			/**
			 * 支付成功
			 */
			public static final String SUCCESS = "2";
			/**
			 * 支付失败
			 */
			public static final String FAIL = "3";
		}

	}
}
