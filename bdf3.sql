/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : wwtg_qdp

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-11-13 19:19:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bdf3_comp_memb
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_comp_memb`;
CREATE TABLE `bdf3_comp_memb` (
  `id_` varchar(50) NOT NULL,
  `caption_` varchar(50) DEFAULT NULL,
  `col_span_` int(11) DEFAULT NULL,
  `component_config_id_` varchar(50) DEFAULT NULL,
  `control_name_` varchar(50) DEFAULT NULL,
  `control_type_` varchar(20) DEFAULT NULL,
  `order_` int(11) DEFAULT NULL,
  `parent_control_name_` varchar(50) DEFAULT NULL,
  `row_span_` int(11) DEFAULT NULL,
  `visible_` bit(1) DEFAULT NULL,
  `width_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_comp_memb
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_component
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_component`;
CREATE TABLE `bdf3_component` (
  `id_` varchar(64) NOT NULL,
  `component_id_` varchar(255) DEFAULT NULL,
  `component_type` varchar(64) DEFAULT NULL,
  `description_` varchar(512) DEFAULT NULL,
  `name_` varchar(64) DEFAULT NULL,
  `path_` varchar(512) DEFAULT NULL,
  `url_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_component
-- ----------------------------
INSERT INTO `bdf3_component` VALUES ('039dcaf8-8d43-4c12-8a49-d43fef8df8ab', '保存', 'ReadWrite', '保存', 'Button', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('1c4c33f9-594c-4c2a-838b-f828fc1a0045', 'ddEntityClassName', 'ReadWrite', null, 'DataSetDropDown', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('2e8ad1b9-418c-4ec9-b228-8f7da6758247', 'dsImporterSolution', 'ReadWrite', null, 'DataSet', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('2f870a21-4ca8-41e1-baed-8fd6ecc2ee78', 'dialogMappingRule', 'ReadWrite', '映射规则维护', 'Dialog', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('3c735a37-7824-4a9c-98ee-09fae8bb1a71', 'dialogImporterSolution', 'ReadWrite', 'Excel导入方案维护', 'Dialog', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('570e1c26-2acb-4a66-a3ac-b458ec663964', 'ajaxActionAutoCreateMappingRule', 'ReadWrite', null, 'AjaxAction', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('69c20598-c2e4-405b-920b-92eea1e27568', 'dialogImporterSolution', 'ReadWrite', 'Excel导入方案维护', 'Dialog', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('86ff61bf-b2f8-4cf4-b3b2-f5ea95934e9a', 'ddEntityManagerFactoryName', 'ReadWrite', null, 'DataSetDropDown', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('8a655b62-6c06-4044-805d-9bdf06fc31fd', '保存', 'ReadWrite', '保存', 'Button', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('9b7a3244-54cb-456f-80c0-f1b438a8cb79', 'updateActionImporterSolution', 'ReadWrite', null, 'UpdateAction', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('b2463ba1-d36e-4369-a674-d1ccb722c468', 'dsEntityClassName', 'ReadWrite', null, 'DataSet', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('b49d08b1-79f9-4a04-bfdb-b2bb78a9941f', '保存', 'ReadWrite', '保存', 'Button', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('e4e9e72a-10e7-45ac-9fc3-b5f5d8bfd805', '保存', 'ReadWrite', '保存', 'Button', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('e9aaf274-716a-482f-8698-34f30352c103', '取消', 'ReadWrite', '取消', 'Button', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('f3b7d93f-0212-4c75-8d75-2a9a3566f3a9', '取消', 'ReadWrite', '取消', 'Button', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');
INSERT INTO `bdf3_component` VALUES ('f6d56763-5a4e-4340-8acf-216521faa4a6', 'dsEntityManagerFactoryName', 'ReadWrite', null, 'DataSet', 'bdf3.importer.view.ImporterSolutionMaintain.d', 'bb9a86d1-3189-4bee-bc33-6a8b30d8ab9d');

-- ----------------------------
-- Table structure for bdf3_data_source_info
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_data_source_info`;
CREATE TABLE `bdf3_data_source_info` (
  `id_` varchar(255) NOT NULL,
  `depletion_index_` int(11) DEFAULT NULL,
  `driverclassname_` varchar(255) DEFAULT NULL,
  `enabled_` bit(1) DEFAULT NULL,
  `jndiname_` varchar(255) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `password_` varchar(255) DEFAULT NULL,
  `shared_` bit(1) DEFAULT NULL,
  `type_` varchar(255) DEFAULT NULL,
  `url_` varchar(255) DEFAULT NULL,
  `username_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_data_source_info
-- ----------------------------
INSERT INTO `bdf3_data_source_info` VALUES ('master', '1', 'com.mysql.jdbc.Driver', '', null, '主公司数据源', '1234!@#$', '', 'com.alibaba.druid.pool.DruidDataSource', 'jdbc:mysql://localhost:3306/wtg?useUnicode=true&characterEncoding=UTF-8', 'root');

-- ----------------------------
-- Table structure for bdf3_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_dictionary`;
CREATE TABLE `bdf3_dictionary` (
  `id_` varchar(64) NOT NULL,
  `code_` varchar(64) DEFAULT NULL,
  `default_value_` varchar(64) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `parent_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_dictionary
-- ----------------------------
INSERT INTO `bdf3_dictionary` VALUES ('39456ab1-a0da-4513-ae43-fbe910c21aa1', '商户', null, '商户', null);

-- ----------------------------
-- Table structure for bdf3_dictionary_item
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_dictionary_item`;
CREATE TABLE `bdf3_dictionary_item` (
  `id_` varchar(64) NOT NULL,
  `dictionary_id_` varchar(64) DEFAULT NULL,
  `enabled_` bit(1) DEFAULT NULL,
  `key_` varchar(64) DEFAULT NULL,
  `order_` int(11) DEFAULT NULL,
  `parent_id_` varchar(64) DEFAULT NULL,
  `value_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_dictionary_item
-- ----------------------------
INSERT INTO `bdf3_dictionary_item` VALUES ('a2aeb1ec-78fe-4cc0-abbc-f88c71d18067', '39456ab1-a0da-4513-ae43-fbe910c21aa1', '', '1', null, null, '是');

-- ----------------------------
-- Table structure for bdf3_entry
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_entry`;
CREATE TABLE `bdf3_entry` (
  `id_` varchar(36) NOT NULL,
  `key_` varchar(100) DEFAULT NULL,
  `mapping_rule_id_` varchar(36) DEFAULT NULL,
  `value_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FKsf1uguh50jlee07j8j0oi8ee7` (`mapping_rule_id_`),
  CONSTRAINT `bdf3_entry_ibfk_1` FOREIGN KEY (`mapping_rule_id_`) REFERENCES `bdf3_mapping_rule` (`id_`),
  CONSTRAINT `bdf3_entry_ibfk_2` FOREIGN KEY (`mapping_rule_id_`) REFERENCES `bdf3_mapping_rule` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_entry
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_group
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_group`;
CREATE TABLE `bdf3_group` (
  `id_` varchar(64) NOT NULL,
  `all_` bit(1) DEFAULT NULL,
  `create_time_` datetime DEFAULT NULL,
  `creator_` varchar(64) DEFAULT NULL,
  `last_notice_id_` varchar(64) DEFAULT NULL,
  `last_notice_send_time_` datetime DEFAULT NULL,
  `member_count_` int(11) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `private_letter_` bit(1) DEFAULT NULL,
  `system_` bit(1) DEFAULT NULL,
  `temporary_` bit(1) DEFAULT NULL,
  `icon_` varchar(255) DEFAULT NULL,
  `description_` varchar(512) DEFAULT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  `url_` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_group
-- ----------------------------
INSERT INTO `bdf3_group` VALUES ('b1839653-ffe4-4259-b18e-7c3586524b50', '', '2018-01-21 22:07:17', 'admin', 'ea80ae09-3f6b-4347-a3ff-964ef4c956ae', '2018-01-21 22:51:41', '2', '运维', '\0', '\0', '\0', 'fa fa-address-card-o', null, null, null);
INSERT INTO `bdf3_group` VALUES ('cb4d3215-2448-43ff-af75-9fabcc19642a', '\0', '2017-09-14 22:04:11', 'admin', '9c9b7c4f-7d57-4e56-9df2-841a4f80b9d9', '2018-01-23 15:30:32', '2', null, '', '\0', '\0', null, null, null, null);

-- ----------------------------
-- Table structure for bdf3_group_member
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_group_member`;
CREATE TABLE `bdf3_group_member` (
  `id_` varchar(64) NOT NULL,
  `active_` bit(1) DEFAULT NULL,
  `administrator_` bit(1) DEFAULT NULL,
  `group_id_` varchar(64) DEFAULT NULL,
  `member_id_` varchar(64) DEFAULT NULL,
  `member_type_` varchar(64) DEFAULT NULL,
  `nickname_` varchar(64) DEFAULT NULL,
  `read_only_` bit(1) DEFAULT NULL,
  `exited_` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_group_member
-- ----------------------------
INSERT INTO `bdf3_group_member` VALUES ('72f9a05e-66cf-41da-8e91-f6aeb8e2daa6', '\0', '', 'b1839653-ffe4-4259-b18e-7c3586524b50', 'admin', null, '系统管理员', '\0', null);
INSERT INTO `bdf3_group_member` VALUES ('77496220-62ce-4885-b556-7ecdf97e82ef', '\0', '\0', 'b1839653-ffe4-4259-b18e-7c3586524b50', 'test1', null, 'test1', '\0', null);
INSERT INTO `bdf3_group_member` VALUES ('a020f14e-44ca-4e35-8b67-4ae3c91d46e2', '', '\0', 'cb4d3215-2448-43ff-af75-9fabcc19642a', 'admin', null, '系统管理员', '\0', null);
INSERT INTO `bdf3_group_member` VALUES ('abce2c39-6d98-49ef-a0d2-b3a3fb66d327', '', '\0', 'cb4d3215-2448-43ff-af75-9fabcc19642a', 'admin', null, '系统管理员', '\0', null);

-- ----------------------------
-- Table structure for bdf3_group_template
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_group_template`;
CREATE TABLE `bdf3_group_template` (
  `id_` varchar(64) NOT NULL,
  `group_id_` varchar(64) DEFAULT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bdf3_group_template
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_importer_solution
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_importer_solution`;
CREATE TABLE `bdf3_importer_solution` (
  `id_` varchar(60) NOT NULL,
  `entity_manager_factory_name_` varchar(60) DEFAULT NULL,
  `create_date_` datetime DEFAULT NULL,
  `desc_` varchar(255) DEFAULT NULL,
  `entity_class_name_` varchar(255) DEFAULT NULL,
  `excel_sheet_name_` varchar(60) DEFAULT NULL,
  `name_` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_importer_solution
-- ----------------------------
INSERT INTO `bdf3_importer_solution` VALUES ('contract-ledger-data', 'entityManagerFactory', null, null, 'cn.chinatowercom.cams.domain.ContractLedger', null, '合同台账数据导入');
INSERT INTO `bdf3_importer_solution` VALUES ('member', 'entityManagerFactory', null, null, 'com.sun.bdf.domain.Member', null, 'm');
INSERT INTO `bdf3_importer_solution` VALUES ('PM_BU_EXECL', 'entityManagerFactory', null, null, 'com.suning.rcpms.entity.Bu', 'sheet1', '测试事业部');
INSERT INTO `bdf3_importer_solution` VALUES ('PM_TASK_EXCEL', 'entityManagerFactory', null, null, 'com.suning.rcpms.entity.pm.PmTask', 'sheet1', '绩效任务导入excel');

-- ----------------------------
-- Table structure for bdf3_link
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_link`;
CREATE TABLE `bdf3_link` (
  `id_` varchar(64) NOT NULL,
  `group_id_` varchar(64) DEFAULT NULL,
  `icon_` varchar(255) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `url_` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bdf3_link
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_log_info
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_log_info`;
CREATE TABLE `bdf3_log_info` (
  `id_` varchar(36) NOT NULL,
  `ip_` varchar(20) DEFAULT NULL,
  `category_` varchar(100) DEFAULT NULL,
  `desc_` longtext,
  `module_` varchar(255) DEFAULT NULL,
  `operation_` varchar(100) DEFAULT NULL,
  `operation_date_` datetime DEFAULT NULL,
  `operation_user_` varchar(30) DEFAULT NULL,
  `operation_user_nickname_` varchar(30) DEFAULT NULL,
  `source_` varchar(255) DEFAULT NULL,
  `title_` varchar(255) DEFAULT NULL,
  `platform_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_log_info
-- ----------------------------
INSERT INTO `bdf3_log_info` VALUES ('0270bdd1-5236-459b-a7d6-a1362d0932fa', '127.0.0.1', '系统日志', '路径 : com.mr.qdp.view.DomainSchemaBdf3.d -> com.mr.qdp.view.bdf3.DomainSchema.d\r\n', '系统模块', '修改', '2019-03-28 19:41:41', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3', null);
INSERT INTO `bdf3_log_info` VALUES ('03243a43-72e8-494d-b73e-4d17bef9f4f2', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-11-20 20:59:43', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'status', null);
INSERT INTO `bdf3_log_info` VALUES ('05250efa-e2b0-4e08-90cd-8c6ff2ea5899', '0:0:0:0:0:0:0:1', '领域模型', '模型英文名称 : null -> MessageGuide\r\n模型中文名称 : null -> 消息-导游\r\n', '业务模块', '新增', '2019-10-03 21:19:28', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('072c4cb3-cf9a-4c76-b2c7-ec35056e222b', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:17', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'amount', null);
INSERT INTO `bdf3_log_info` VALUES ('0847235c-d388-4967-add9-8b061ceb0c4b', '0:0:0:0:0:0:0:1', '领域模型', '模型英文名称 : null -> NoticeItem\r\n模型中文名称 : null -> 公告详情\r\n', '业务模块', '新增', '2019-10-03 22:01:43', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('09442014-bd96-4ee2-8c6a-8c5494f75f23', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:01', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'customerPhone', null);
INSERT INTO `bdf3_log_info` VALUES ('0a0e7771-969d-4ae8-980b-df22bd5da613', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:17', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'customerphone', null);
INSERT INTO `bdf3_log_info` VALUES ('0c7c0625-11c5-4b18-8bf9-5aceb4b137d3', '0:0:0:0:0:0:0:1', '系统日志', '模型中文名称 : 汇率 -> 税率\r\n模型英文名称 : ExRate1 -> TaxRate\r\n', '系统模块', '修改', '2019-10-01 16:08:24', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376ba34c96016ba34e69240000', null);
INSERT INTO `bdf3_log_info` VALUES ('0d7f49ac-b92b-45f6-b233-c561e8f09184', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2019-11-08 22:35:26', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '8f80b48d6bdac997016bdaf4b1bc0000', null);
INSERT INTO `bdf3_log_info` VALUES ('138975ff-ad11-4825-a997-6786e1c85034', '127.0.0.1', '领域模型', '模型英文名称 : null -> GalaxieMigrateProcessFeedback\r\n模型中文名称 : null -> 星河云迁移进度反馈\r\n', '业务模块', '新增', '2020-06-30 19:14:15', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('15485daf-63da-4ecc-964e-dd5f84914981', '127.0.0.1', '系统日志', '模型中文名称 : 内部订单 -> 开票申请\r\n模型英文名称 : OrderIn -> Apply\r\n', '系统模块', '修改', '2019-03-29 17:58:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba1e06a10002', null);
INSERT INTO `bdf3_log_info` VALUES ('15552a2e-b70b-43f8-88ab-85e3b109cc89', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:45', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'companyname', null);
INSERT INTO `bdf3_log_info` VALUES ('16da9886-ff6f-4387-8cb0-bac66da0487a', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('16fc3fb9-f755-4921-9b36-f51379ecb44b', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('187df539-99f2-4ff7-a96f-5803a2ee05ef', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-11-20 20:59:43', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'stockl', null);
INSERT INTO `bdf3_log_info` VALUES ('19b0c1ed-3344-459d-9eac-b291c14d0503', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-10-20 09:55:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de3ae5da70001', null);
INSERT INTO `bdf3_log_info` VALUES ('19f301f0-76ab-45bc-a93b-8dc36b424105', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-06-26 23:27:03', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba043e0f0001', null);
INSERT INTO `bdf3_log_info` VALUES ('2072d0ce-9e60-429d-8cbe-4eb0afbdfb0c', '127.0.0.1', '系统日志', '模型英文名称 : null -> Coupon\r\n模型中文名称 : null -> 卡券\r\n', '系统模块', '新增', '2019-10-20 10:09:23', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('237b2de0-8b33-4e1f-bdeb-41c7a8247bde', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:17', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'invoiceissued', null);
INSERT INTO `bdf3_log_info` VALUES ('23ac23f6-05ec-4a6e-8d80-d26710bdf531', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:14:09', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', '财务', null);
INSERT INTO `bdf3_log_info` VALUES ('2523c32c-0b88-4de5-b370-d79a5be42bdc', '127.0.0.1', '领域模型', '模型英文名称 : null -> DiscoveryHomeBanner\r\n模型中文名称 : null -> 发现首页Banner\r\n', '业务模块', '新增', '2019-10-19 19:01:30', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('261b02f5-600b-46df-9957-459f91211552', '127.0.0.1', '系统日志', '模型英文名称 : null -> StoreScanRecord\r\n模型中文名称 : null -> 店铺扫码记录\r\n', '系统模块', '新增', '2019-07-17 23:34:49', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('2c95f9bd-3d97-48a8-b53e-4868cbdcd838', '127.0.0.1', '领域模型', '', '业务模块', '删除', '2019-06-26 23:27:03', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169b98c76550000', null);
INSERT INTO `bdf3_log_info` VALUES ('2d71ec25-6fef-4b36-82e9-b90393670c8a', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:45', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'customeremail', null);
INSERT INTO `bdf3_log_info` VALUES ('2e4c4620-cc0d-42e1-9be0-e1e939a3a0a5', '127.0.0.1', '领域模型', '模型中文名称 : 发现首页Banner -> 发现首页配置\r\n模型英文名称 : DiscoveryHomeBanner -> DiscoveryItem\r\n', '业务模块', '修改', '2019-10-20 09:55:15', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de3adef160000', null);
INSERT INTO `bdf3_log_info` VALUES ('2ea2d903-da8d-4a18-8abf-37d1afbed251', '127.0.0.1', '系统日志', '模型英文名称 : OrderOuter -> OrderEx\r\n', '系统模块', '修改', '2019-03-28 19:16:05', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba043e0f0001', null);
INSERT INTO `bdf3_log_info` VALUES ('2ef99feb-36e2-430f-b4b4-de9ba6e20dfc', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:14:02', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', '未来角色', null);
INSERT INTO `bdf3_log_info` VALUES ('3087727c-bd58-45ae-996d-c3590b271ab0', '127.0.0.1', '领域模型', '模型英文名称 : null -> AppointmentRecord\r\n模型中文名称 : null -> 预约记录\r\n', '业务模块', '新增', '2019-11-20 20:27:23', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('30ba7e8c-b90d-4602-b038-88d1887f4df9', '0:0:0:0:0:0:0:1', '系统日志', '模型英文名称 : Coupon -> Card\r\n', '系统模块', '修改', '2019-11-08 22:35:12', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de6ed20380008', null);
INSERT INTO `bdf3_log_info` VALUES ('3269bd35-dc3e-4ae5-9aba-054df54d4ee3', '127.0.0.1', '领域模型', '模型英文名称 : null -> DiscoveryHomeCategory\r\n模型中文名称 : null -> 发现首页类别\r\n', '业务模块', '新增', '2019-10-19 19:01:58', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('351b540e-e1e4-404f-b229-e46c1dd281ab', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:01', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'amount', null);
INSERT INTO `bdf3_log_info` VALUES ('36b5f262-7d47-47ee-8f3c-ac1092697a1a', '0:0:0:0:0:0:0:1', '领域模型', '模型英文名称 : null -> Bookmark\r\n模型中文名称 : null -> 收藏夹\r\n', '业务模块', '新增', '2019-10-07 15:41:20', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('38c13c2f-f316-4705-8dcd-e9385fd5fc2f', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:01', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'invoiceIssued', null);
INSERT INTO `bdf3_log_info` VALUES ('3fa33104-a63e-4ac4-a78a-5eab4124508a', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-07-10 17:14:16', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'domainname', null);
INSERT INTO `bdf3_log_info` VALUES ('40b2501e-a5fd-415a-a676-9e674c6b5afa', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('43485eec-f457-46d9-9613-6804d57ea778', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('438009e0-6b52-486a-aded-e807f1ae98db', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 14:02:53', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'c', null);
INSERT INTO `bdf3_log_info` VALUES ('43db17c3-28ab-451f-a406-7216d0407302', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-11-20 20:59:43', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'expireDate', null);
INSERT INTO `bdf3_log_info` VALUES ('4925cb39-ef04-4ae0-9146-bd0bb00acf79', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('49f714f3-dd0c-4f32-8023-f73a45f3862c', '127.0.0.1', '系统日志', '排序号 : 1 -> 0\r\n', '系统模块', '修改', '2019-03-16 21:48:35', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3', null);
INSERT INTO `bdf3_log_info` VALUES ('4a8ca614-d084-4ad5-90eb-90b6c7f90b2e', '127.0.0.1', '系统日志', '模型英文名称 : null -> DiscoveryHomeCategory\r\n模型中文名称 : null -> 发现首页类别\r\n', '系统模块', '新增', '2019-10-19 19:01:58', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('4bb7a66e-5604-4cba-bf78-f44e03847a34', '127.0.0.1', '领域模型', '模型英文名称 : null -> PushRecord\r\n模型中文名称 : null -> 推送记录\r\n', '业务模块', '新增', '2019-10-05 18:35:26', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('4bfb2b41-fdae-456d-9054-f94ef2d356f0', '0:0:0:0:0:0:0:1', '系统日志', '模型中文名称 : 消息-导游 -> 公告-导游\r\n模型英文名称 : MessageGuide -> NoticeGuide\r\n', '系统模块', '修改', '2019-10-03 21:46:17', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028838c6d91b108016d91c6823f0000', null);
INSERT INTO `bdf3_log_info` VALUES ('4f322e0d-fdae-45fe-9031-28a25b5a6638', '127.0.0.1', '领域模型', '模型英文名称 : null -> Coupon\r\n模型中文名称 : null -> 卡券\r\n', '业务模块', '新增', '2019-10-20 10:09:23', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('4f32b599-a0a6-4b2f-9745-d96d8590e198', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('50a512d7-c37d-489a-8949-b9c554c011a5', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2019-11-08 22:35:26', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '8f80b48d6bdac997016bdaf7d76f0002', null);
INSERT INTO `bdf3_log_info` VALUES ('51371a10-69f0-4f0b-abfc-68ccafc29177', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-06-26 23:27:03', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169b98c76550000', null);
INSERT INTO `bdf3_log_info` VALUES ('521fbc37-10f6-4cf6-b996-7304607443ce', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:41', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'oRDER20190329002', null);
INSERT INTO `bdf3_log_info` VALUES ('5239b7a0-dab3-4fc1-8fb9-4276d27c925f', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('5363991b-3101-46bd-8683-0cf52c414cda', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-06-26 23:27:03', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba1e06a10002', null);
INSERT INTO `bdf3_log_info` VALUES ('5678db8b-c219-4e33-8f2f-63446e0df103', '127.0.0.1', '领域模型', '模型英文名称 : null -> StoreScanRecord\r\n模型中文名称 : null -> 店铺扫码记录\r\n', '业务模块', '新增', '2019-07-17 23:34:49', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('5a75a36b-cbdd-4977-85a5-5c1adc8a16a2', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('5ac30c30-ff3c-4f16-9ab2-d85c905f1f71', '127.0.0.1', '领域模型', '模型中文名称 : 外部订单 -> 流水单\r\n模型英文名称 : OrderEx -> Flow\r\n', '业务模块', '修改', '2019-03-29 17:57:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba043e0f0001', null);
INSERT INTO `bdf3_log_info` VALUES ('5c190ec4-b960-45d2-ac9b-c9da9bb6e9f0', '0:0:0:0:0:0:0:1', '领域模型', '', '业务模块', '删除', '2019-11-08 22:35:26', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '8f80b48d6bdac997016bdaf7d76f0002', null);
INSERT INTO `bdf3_log_info` VALUES ('5cf38403-b9a9-4cd9-987e-9664856abae2', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('5e49171c-37be-401c-a460-73c4a5b1b2fd', '0:0:0:0:0:0:0:1', '领域模型', '模型英文名称 : Coupon -> Card\r\n', '业务模块', '修改', '2019-11-08 22:35:12', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de6ed20380008', null);
INSERT INTO `bdf3_log_info` VALUES ('60767178-bb8c-4bb7-9443-7da81008e713', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-16 21:48:35', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3Ftl', null);
INSERT INTO `bdf3_log_info` VALUES ('60926d7e-84ea-466e-9337-85fdc6875c1b', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2019-11-08 22:35:26', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '8f80b48d6bdac997016bdaf79fd20001', null);
INSERT INTO `bdf3_log_info` VALUES ('63dc0cc6-da4c-4057-8c6c-077e01ac769f', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('64639322-536f-4dc4-958d-1803c6ee31a1', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-16 21:48:35', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3Rsf单元测试', null);
INSERT INTO `bdf3_log_info` VALUES ('65226d54-a333-446f-9d2b-e3ccb5e1c8c6', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:45', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'customerphone', null);
INSERT INTO `bdf3_log_info` VALUES ('653c8b61-8616-43d5-b1c3-7ad153204d0c', '127.0.0.1', '领域模型', '模型英文名称 : OrderOuter -> OrderEx\r\n', '业务模块', '修改', '2019-03-28 19:16:05', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba043e0f0001', null);
INSERT INTO `bdf3_log_info` VALUES ('653d60f6-ebfb-471f-8b1e-9db31dfc76f0', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-11-20 20:59:43', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'name', null);
INSERT INTO `bdf3_log_info` VALUES ('6728002b-586e-4de4-a3d1-5e8630b05bad', '127.0.0.1', '领域模型', '', '业务模块', '删除', '2019-06-26 23:27:03', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba1e06a10002', null);
INSERT INTO `bdf3_log_info` VALUES ('67c72421-d24a-4bc0-9e7c-9e52c22fd9f1', '127.0.0.1', '领域模型', '模型英文名称 : null -> QueryRule\r\n模型中文名称 : null -> 查询规则\r\n', '业务模块', '新增', '2019-07-10 16:16:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('6880a3bd-8523-45cd-923c-1f0b63b25a47', '127.0.0.1', '系统日志', '排序号 : 2 -> 1\r\n', '系统模块', '删除', '2019-03-16 21:48:35', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3Rsf', null);
INSERT INTO `bdf3_log_info` VALUES ('6b84b569-1b19-4f91-b748-915fdd8646ac', '127.0.0.1', '系统日志', '模型英文名称 : null -> QueryRule\r\n模型中文名称 : null -> 查询规则\r\n', '系统模块', '新增', '2019-07-10 16:16:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('6bd67faf-d074-4f94-8e72-707d6e99d881', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('6e75a4b0-6789-4ad3-a7bd-92dbaa4f4310', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:14:04', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', '未来管理', null);
INSERT INTO `bdf3_log_info` VALUES ('6f685e26-b34e-433a-9230-f859fb63b473', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('719ad38e-93ff-494a-9613-a49cbced82cc', '127.0.0.1', '系统日志', '模型英文名称 : null -> GalaxieMigrateProcessFeedback\r\n模型中文名称 : null -> 星河云迁移进度反馈\r\n', '系统模块', '新增', '2020-06-30 19:14:15', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('7449ce40-a7e0-431b-9e24-363aea74fc7d', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('745e36b8-4bcd-404a-a45f-0da6c6332d5c', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:13:59', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', 'RCAMS管理', null);
INSERT INTO `bdf3_log_info` VALUES ('74d076b1-2f7e-4ec8-8c97-084db8ac9e12', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:17', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'productdetail', null);
INSERT INTO `bdf3_log_info` VALUES ('752c54cd-415d-4389-b418-66493c63a1f0', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:14:08', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', '自营袁泉角色', null);
INSERT INTO `bdf3_log_info` VALUES ('7856367f-17a0-4f8a-ab59-200bc25ad385', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:14:06', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', '万物直供商城', null);
INSERT INTO `bdf3_log_info` VALUES ('7ac4f77e-d026-4391-b7f6-bd951d9a0ae2', '127.0.0.1', '系统日志', '模型英文名称 : OrderInner -> OrderIn\r\n', '系统模块', '修改', '2019-03-28 19:16:14', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba1e06a10002', null);
INSERT INTO `bdf3_log_info` VALUES ('7c625566-becd-49f3-826d-d120a84e52f8', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2019-10-03 23:21:48', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'type', null);
INSERT INTO `bdf3_log_info` VALUES ('7eda568e-47d2-4c63-9287-38d6970002cc', '0:0:0:0:0:0:0:1', '系统日志', '模型英文名称 : ExRate -> ExRate1\r\n', '系统模块', '修改', '2019-08-12 00:00:52', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376ba34c96016ba34e69240000', null);
INSERT INTO `bdf3_log_info` VALUES ('814b1908-6d68-4e45-92ae-98119043cc46', '127.0.0.1', '领域模型', '模型英文名称 : OrderInner -> OrderIn\r\n', '业务模块', '修改', '2019-03-28 19:16:14', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba1e06a10002', null);
INSERT INTO `bdf3_log_info` VALUES ('81fa3cfd-a0ae-4476-bd54-0a4c5192a43d', '127.0.0.1', '系统日志', '模型英文名称 : null -> Test\r\n模型中文名称 : null -> 测试\r\n', '系统模块', '新增', '2019-03-16 21:50:14', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('82a31758-7c46-48f7-9fd2-e51a020a2fde', '0:0:0:0:0:0:0:1', '系统日志', '模型中文名称 : 公告-导游 -> 公告\r\n模型英文名称 : NoticeGuide -> Notice\r\n', '系统模块', '修改', '2019-10-03 21:55:12', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028838c6d91b108016d91c6823f0000', null);
INSERT INTO `bdf3_log_info` VALUES ('84a5c449-7d94-44f8-bc40-1c955a7297b9', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('863033ac-343f-4970-bd3d-a365db625c69', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-10-20 09:55:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de3aec7630002', null);
INSERT INTO `bdf3_log_info` VALUES ('86e244b5-8aaa-48d6-9363-4c8a0ce5582d', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:45', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'taxno', null);
INSERT INTO `bdf3_log_info` VALUES ('892c0785-a065-4915-a37f-cb447993ca91', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('8a773283-3117-4468-81e3-d24a10001da2', '127.0.0.1', '系统日志', '模型英文名称 : null -> ExRate\r\n模型中文名称 : null -> 汇率\r\n', '系统模块', '新增', '2019-06-29 20:55:53', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('8ce691c3-88c0-439d-8ec0-ff40b8b7810d', '127.0.0.1', '系统日志', '模型英文名称 : null -> CouponAppointment\r\n模型中文名称 : null -> 预约券\r\n', '系统模块', '新增', '2019-11-14 09:38:28', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('9207d0ca-06a1-4565-b80c-a06eeb165182', '0:0:0:0:0:0:0:1', '系统日志', 'R标题/注释 : 消息副主题 -> 消息备注\r\nC属性名称 : subTitle -> remark\r\n', '系统模块', '修改', '2019-10-03 23:21:48', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'remark', null);
INSERT INTO `bdf3_log_info` VALUES ('9230ae2d-8274-46fa-9739-e44493ad68b9', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 16:08:33', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'cD', null);
INSERT INTO `bdf3_log_info` VALUES ('92a15112-1ac2-4ce3-bd6b-bc15daee8fce', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('94fbb57d-972a-4529-b2f5-dd261731435d', '127.0.0.1', '系统日志', '模型英文名称 : null -> DiscoveryHomeBanner\r\n模型中文名称 : null -> 发现首页Banner\r\n', '系统模块', '新增', '2019-10-19 19:01:30', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('96656108-4089-4fcc-8a9a-44b07680253b', '0:0:0:0:0:0:0:1', '领域模型', '模型英文名称 : ExRate -> ExRate1\r\n', '业务模块', '修改', '2019-08-12 00:00:52', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376ba34c96016ba34e69240000', null);
INSERT INTO `bdf3_log_info` VALUES ('97c4ecff-0000-49c9-a556-e6773a4be310', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 14:02:53', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'c', null);
INSERT INTO `bdf3_log_info` VALUES ('992983be-0c7a-4c3b-9a80-e936c31bfd1b', '0:0:0:0:0:0:0:1', '领域模型', '模型中文名称 : 汇率 -> 税率\r\n模型英文名称 : ExRate1 -> TaxRate\r\n', '业务模块', '修改', '2019-10-01 16:08:24', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376ba34c96016ba34e69240000', null);
INSERT INTO `bdf3_log_info` VALUES ('99939d2f-d58a-4526-aae7-24c27eded79b', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('9b4fe7e0-8c63-4873-87ba-409b374dc66b', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('9f2874fb-61db-4063-a8d0-2cabb18b0915', '127.0.0.1', '系统日志', '模型中文名称 : 发现首页Banner -> 发现首页配置\r\n模型英文名称 : DiscoveryHomeBanner -> DiscoveryItem\r\n', '系统模块', '修改', '2019-10-20 09:55:15', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de3adef160000', null);
INSERT INTO `bdf3_log_info` VALUES ('9f92fece-8a9c-4b7d-a8b7-10f66848460c', '127.0.0.1', '系统日志', '路径 : com.mr.qdp.view.Bdf3Template.d -> com.mr.qdp.view.bdf3.Template.d\r\n', '系统模块', '修改', '2019-03-28 19:41:30', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3', null);
INSERT INTO `bdf3_log_info` VALUES ('a2499fdf-a3ef-4744-9ba1-bba15a14860a', '127.0.0.1', '系统日志', '模型英文名称 : null -> PushRecord\r\n模型中文名称 : null -> 推送记录\r\n', '系统模块', '新增', '2019-10-05 18:35:26', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('a2af2a2a-2cc9-427d-84f0-a3920a970655', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 16:08:33', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'b', null);
INSERT INTO `bdf3_log_info` VALUES ('a316b5fb-bdca-404a-a6e8-211fd242b7bf', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 14:02:53', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'c', null);
INSERT INTO `bdf3_log_info` VALUES ('a94a5e37-630f-49e4-aa3f-048863f7fee9', '0:0:0:0:0:0:0:1', '领域模型', '', '业务模块', '删除', '2019-11-08 22:35:26', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '8f80b48d6bdac997016bdaf79fd20001', null);
INSERT INTO `bdf3_log_info` VALUES ('a9b3cf41-c69b-487c-82fa-df12829817c1', '0:0:0:0:0:0:0:1', '领域模型', '模型中文名称 : 公告-导游 -> 公告\r\n模型英文名称 : NoticeGuide -> Notice\r\n', '业务模块', '修改', '2019-10-03 21:55:12', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028838c6d91b108016d91c6823f0000', null);
INSERT INTO `bdf3_log_info` VALUES ('abc075e4-48c7-4a60-983f-b6760421ac3b', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 16:08:33', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'aa', null);
INSERT INTO `bdf3_log_info` VALUES ('ac82873b-3dec-4155-9af6-bbff4b7e951b', '127.0.0.1', '系统日志', '排序号 : 3 -> 1\r\n', '系统模块', '删除', '2019-03-16 21:48:35', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3Rsf单元测试', null);
INSERT INTO `bdf3_log_info` VALUES ('acdcf43a-dda2-45c1-b1a7-dd2997f6f42e', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:17', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderno', null);
INSERT INTO `bdf3_log_info` VALUES ('ad491398-aae6-40ef-baf7-90dcbf328314', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-11-20 20:59:43', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'type', null);
INSERT INTO `bdf3_log_info` VALUES ('ae925442-349b-4a49-ae0e-b8e319c98daf', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('b0b507c0-fad2-41e5-8e03-24310c362138', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('b0f94c4f-8b81-42db-93a6-eddf6dbef7d4', '0:0:0:0:0:0:0:1', '系统日志', '模型英文名称 : null -> Bookmark\r\n模型中文名称 : null -> 收藏夹\r\n', '系统模块', '新增', '2019-10-07 15:41:20', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('b185f36c-49f2-4900-ac5c-c67647ffccf9', '127.0.0.1', '系统日志', '模型英文名称 : null -> AppointmentRecord\r\n模型中文名称 : null -> 预约记录\r\n', '系统模块', '新增', '2019-11-20 20:27:23', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('b26c512b-e13a-4218-8e22-3012399b2a71', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:17', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'customername', null);
INSERT INTO `bdf3_log_info` VALUES ('b4cc52c7-a85a-465d-8007-b877b95f8c11', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('b4d1333c-2281-42f6-b284-9cb7eb8ca6cc', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:45', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'amount', null);
INSERT INTO `bdf3_log_info` VALUES ('b6ab795d-e7c0-4573-aa3f-2ee00f580ec7', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('b717db6e-8d10-4798-a82e-f247fa9e15ee', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-28 19:42:45', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'customername', null);
INSERT INTO `bdf3_log_info` VALUES ('b7e68b0f-46d3-466b-afab-e9851164250c', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-07-10 17:14:16', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'platformcode', null);
INSERT INTO `bdf3_log_info` VALUES ('b8f8c6c4-bfd6-48af-a673-67e6917d41cd', '127.0.0.1', '系统日志', '模型英文名称 : null -> QueryResult\r\n模型中文名称 : null -> 查询结果\r\n', '系统模块', '新增', '2019-07-10 16:20:04', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('bc914f73-5356-4744-8a86-38c44b5cf1a4', '127.0.0.1', '领域模型', '模型英文名称 : null -> DiscoveryHomeRecommand\r\n模型中文名称 : null -> 发现首页推荐\r\n', '业务模块', '新增', '2019-10-19 19:02:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('bdb6a078-04a0-40cd-ace8-fa4a35c90f37', '127.0.0.1', '领域模型', '模型中文名称 : 内部订单 -> 开票申请\r\n模型英文名称 : OrderIn -> Apply\r\n', '业务模块', '修改', '2019-03-29 17:58:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba1e06a10002', null);
INSERT INTO `bdf3_log_info` VALUES ('c5b169b1-9e5a-4671-aa33-313d231eb3e6', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:01', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'productDetail', null);
INSERT INTO `bdf3_log_info` VALUES ('c7afa8e9-09fe-4034-baad-f6b8eb317adb', '127.0.0.1', '领域模型', '', '业务模块', '删除', '2019-10-20 09:55:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de3aec7630002', null);
INSERT INTO `bdf3_log_info` VALUES ('c8bc16fa-9ef6-472f-b56f-254d42032be8', '127.0.0.1', '系统日志', '模型英文名称 : null -> QueryCondition\r\n模型中文名称 : null -> 查询条件\r\n', '系统模块', '新增', '2019-07-10 16:19:50', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('cccad358-ff17-4033-b3bc-b009d4ac2564', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 14:02:53', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'c', null);
INSERT INTO `bdf3_log_info` VALUES ('d19d3c44-4f17-48d1-add3-08d1e150e60a', '0:0:0:0:0:0:0:1', '领域模型', '', '业务模块', '删除', '2019-11-08 22:35:26', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '8f80b48d6bdac997016bdaf4b1bc0000', null);
INSERT INTO `bdf3_log_info` VALUES ('d3a25430-9ddc-4f08-a2b0-e0854b3dbf4b', '127.0.0.1', '领域模型', '模型英文名称 : null -> ExRate\r\n模型中文名称 : null -> 汇率\r\n', '业务模块', '新增', '2019-06-29 20:55:53', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('d4f79a61-d450-48ab-8d7b-6715af6384ca', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-16 21:48:35', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.UrlMaintain.d', 'Bdf3Rsf', null);
INSERT INTO `bdf3_log_info` VALUES ('d5209457-ff32-4d6f-a94d-7fcc571e7a6b', '127.0.0.1', '领域模型', '', '业务模块', '删除', '2019-06-26 23:27:03', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba043e0f0001', null);
INSERT INTO `bdf3_log_info` VALUES ('d76c0c61-fb3b-4897-8e20-e9e72d63332c', '0:0:0:0:0:0:0:1', '系统日志', '模型英文名称 : null -> NoticeItem\r\n模型中文名称 : null -> 公告详情\r\n', '系统模块', '新增', '2019-10-03 22:01:43', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('e02c6672-705b-436d-b049-5cae4116b78e', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:14:00', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', 'RCSMMS管理', null);
INSERT INTO `bdf3_log_info` VALUES ('e057df4c-61bc-44d5-9740-12ac05751332', '127.0.0.1', '领域模型', '模型英文名称 : null -> CouponAppointment\r\n模型中文名称 : null -> 预约券\r\n', '业务模块', '新增', '2019-11-14 09:38:28', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('e34adcaa-1df5-409f-b0e9-f623deeef5b0', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:01', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('e40416c4-6fc3-42a8-9d85-29c0dae024dd', '127.0.0.1', '系统日志', '模型英文名称 : null -> DiscoveryHomeRecommand\r\n模型中文名称 : null -> 发现首页推荐\r\n', '系统模块', '新增', '2019-10-19 19:02:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('e4ba13e8-0d56-47d6-b742-fab00839c184', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:41', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'oRDER20190329001', null);
INSERT INTO `bdf3_log_info` VALUES ('e51a46e7-8e91-4ae3-91d7-c52519296fe5', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('e811327f-8290-4e49-8fc2-90a926f0c58b', '127.0.0.1', '领域模型', '模型英文名称 : null -> QueryCondition\r\n模型中文名称 : null -> 查询条件\r\n', '业务模块', '新增', '2019-07-10 16:19:50', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('e90d9543-5713-4ef1-8e33-e394cd842d43', '127.0.0.1', '领域模型', '模型英文名称 : null -> Test\r\n模型中文名称 : null -> 测试\r\n', '业务模块', '新增', '2019-03-16 21:50:14', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('e9a07c04-e55a-4a75-a5e1-4fd3ae81b401', '0:0:0:0:0:0:0:1', '系统日志', '模型英文名称 : null -> MessageGuide\r\n模型中文名称 : null -> 消息-导游\r\n', '系统模块', '新增', '2019-10-03 21:19:28', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('ead5c5c7-8501-4546-9814-c1b183e83ff9', '0:0:0:0:0:0:0:1', '领域模型', '模型中文名称 : 消息-导游 -> 公告-导游\r\n模型英文名称 : MessageGuide -> NoticeGuide\r\n', '业务模块', '修改', '2019-10-03 21:46:17', 'admin', '系统管理员', 'http://localhost:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028838c6d91b108016d91c6823f0000', null);
INSERT INTO `bdf3_log_info` VALUES ('ed8aeccc-02f6-480a-a93c-1749cc0b84f6', '127.0.0.1', '领域模型', '', '业务模块', '删除', '2019-10-20 09:55:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e3376de3a72b016de3ae5da70001', null);
INSERT INTO `bdf3_log_info` VALUES ('edc529f0-8928-48b7-b973-6ab630f231cb', '127.0.0.1', '领域模型', '模型英文名称 : null -> QueryResult\r\n模型中文名称 : null -> 查询结果\r\n', '业务模块', '新增', '2019-07-10 16:20:04', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', null, null);
INSERT INTO `bdf3_log_info` VALUES ('f2a64ac5-ccb3-49f0-bfa5-ca2837160a11', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('f52858b7-b258-4a8d-9b13-c100937d18b3', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('f69d4b5e-e9dc-4dfb-9410-e1ac13863966', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 16:15:38', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'orderNo', null);
INSERT INTO `bdf3_log_info` VALUES ('f83f884a-7c2d-4b46-939f-b89d2ea57809', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-19 23:14:01', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/bdf3.security.ui.view.RoleMaintain.d', 'RCPMS管理', null);
INSERT INTO `bdf3_log_info` VALUES ('f8db5af6-acfd-4e92-bf51-aca17a3186cb', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-17 16:08:33', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.DomainSchemaBdf3.d', 'c', null);
INSERT INTO `bdf3_log_info` VALUES ('fcff1d3e-704d-449b-b275-54892c71604c', '127.0.0.1', '系统日志', '', '系统模块', '删除', '2019-03-29 15:51:01', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', 'customerName', null);
INSERT INTO `bdf3_log_info` VALUES ('ff027592-9768-4e79-8890-cfc23c0c29e8', '127.0.0.1', '系统日志', '模型中文名称 : 外部订单 -> 流水单\r\n模型英文名称 : OrderEx -> Flow\r\n', '系统模块', '修改', '2019-03-29 17:57:25', 'admin', '系统管理员', 'http://127.0.0.1:8080/qdp/com.mr.qdp.view.bdf3.DomainSchema.d', '4028e33769b98b3c0169ba043e0f0001', null);

-- ----------------------------
-- Table structure for bdf3_mapping_rule
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_mapping_rule`;
CREATE TABLE `bdf3_mapping_rule` (
  `id_` varchar(36) NOT NULL,
  `cell_post_parser_bean_` varchar(255) DEFAULT NULL,
  `cell_post_parser_param_` varchar(255) DEFAULT NULL,
  `cell_prev_parser_bean_` varchar(255) DEFAULT NULL,
  `cell_prev_parser_param_` varchar(255) DEFAULT NULL,
  `excel_column_` int(11) DEFAULT NULL,
  `ignore_error_format_data_` bit(1) DEFAULT NULL,
  `importer_solution_id_` varchar(64) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `property_name_` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FKp5jfy47dptvmj9drl6pxgww1a` (`importer_solution_id_`),
  CONSTRAINT `bdf3_mapping_rule_ibfk_1` FOREIGN KEY (`importer_solution_id_`) REFERENCES `bdf3_importer_solution` (`id_`),
  CONSTRAINT `bdf3_mapping_rule_ibfk_2` FOREIGN KEY (`importer_solution_id_`) REFERENCES `bdf3_importer_solution` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_mapping_rule
-- ----------------------------
INSERT INTO `bdf3_mapping_rule` VALUES ('013c9b35-209e-42e8-bf83-5d0f4c30bb7d', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '49', '\0', 'contract-ledger-data', '谈点人', 'talker');
INSERT INTO `bdf3_mapping_rule` VALUES ('02d38c38-1a78-4b9c-ba13-b081ded028da', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '5', '\0', 'contract-ledger-data', '站址名称', 'siteName');
INSERT INTO `bdf3_mapping_rule` VALUES ('03fb29ca-48be-469d-a3ee-170599c1238e', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '1', '\0', 'PM_BU_EXECL', '编码', 'code');
INSERT INTO `bdf3_mapping_rule` VALUES ('0a218d67-4a67-4afd-ab85-1f1a6b3eb99c', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '47', '\0', 'contract-ledger-data', '续签合同编号', 'renewContractCode');
INSERT INTO `bdf3_mapping_rule` VALUES ('0d1771d3-75fb-4d09-abd4-abb929b330f8', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '3', '\0', 'member', '学校', 'schoolId');
INSERT INTO `bdf3_mapping_rule` VALUES ('14128ac9-6655-4446-8b5b-4dd5e2e6212a', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '6', '\0', 'contract-ledger-data', '注资类型', 'injectionType');
INSERT INTO `bdf3_mapping_rule` VALUES ('157b7133-8bea-4011-92a6-69ecce876f6e', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '36', '\0', 'contract-ledger-data', '年租金（元/年）', 'annualRent');
INSERT INTO `bdf3_mapping_rule` VALUES ('17205c57-20b1-4a1d-8960-4889136f4dd1', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '2', '\0', 'PM_TASK_EXCEL', '店铺编码', 'storeCode');
INSERT INTO `bdf3_mapping_rule` VALUES ('1d3c1a5e-6736-4bfd-831b-bacfd53a6cd9', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '1', '\0', 'contract-ledger-data', '地市', 'prefectureLevel');
INSERT INTO `bdf3_mapping_rule` VALUES ('215a49c1-b43d-46a2-a8cc-2f729a442f6c', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '14', '\0', 'contract-ledger-data', '经度', 'longitude');
INSERT INTO `bdf3_mapping_rule` VALUES ('2293abad-f699-494a-8d8c-ca2b9ef27eec', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '12', '\0', 'contract-ledger-data', '站点级别', 'siteLevel');
INSERT INTO `bdf3_mapping_rule` VALUES ('24d01631-af2a-4ebb-92d6-eb0f30bd3cb6', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '4', '\0', 'member', '创建人', 'creator');
INSERT INTO `bdf3_mapping_rule` VALUES ('2532ec53-2c06-4c87-a150-5ad4edec1c05', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '46', '\0', 'contract-ledger-data', '续签合同经办人', 'renewContractAgent');
INSERT INTO `bdf3_mapping_rule` VALUES ('2863f0fe-dca6-4de9-8c69-95e860af98e4', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '0', '\0', 'PM_BU_EXECL', '名称', 'name');
INSERT INTO `bdf3_mapping_rule` VALUES ('2864481d-4a23-427c-b090-b301bc744abc', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '10', '\0', 'contract-ledger-data', '联通名称', 'unicomName');
INSERT INTO `bdf3_mapping_rule` VALUES ('2d4c35d2-d824-4a5e-bde5-b9c99541d346', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '3', '\0', 'contract-ledger-data', '站址编码', 'siteCode');
INSERT INTO `bdf3_mapping_rule` VALUES ('30ba9b0b-c6c6-49cc-b4ce-92a07ea9ada0', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '9', '\0', 'contract-ledger-data', '移动名称', 'mobileName');
INSERT INTO `bdf3_mapping_rule` VALUES ('34d2a1a7-322c-47c9-9963-7d8cbe331f9d', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '34', '\0', 'contract-ledger-data', '合同结束日期', 'contractEndDate');
INSERT INTO `bdf3_mapping_rule` VALUES ('396909a5-79e9-40b4-bac2-fc8c330db994', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '5', '\0', 'member', '创建时间', 'createDate');
INSERT INTO `bdf3_mapping_rule` VALUES ('3aec9897-628c-4a4a-a478-b8c6e0c9a38a', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '16', '\0', 'contract-ledger-data', '基站地址', 'baseAddress');
INSERT INTO `bdf3_mapping_rule` VALUES ('3c3ef40d-dfc0-4e1f-ba5f-2ead67d7800d', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '41', '\0', 'contract-ledger-data', '租金支付有效日期', 'rentPaymentEffectiveDate');
INSERT INTO `bdf3_mapping_rule` VALUES ('432aee40-2d54-4b6e-993c-2be8a6e687e8', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '28', '\0', 'contract-ledger-data', '业主收款账号', 'ownnerCollectionAccount');
INSERT INTO `bdf3_mapping_rule` VALUES ('4c6e93c5-fa60-4c23-8190-e0424962fdfd', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '1', '\0', 'member', '性别', 'sex');
INSERT INTO `bdf3_mapping_rule` VALUES ('51fd6336-34a3-4b02-b443-ff83c4597e70', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '3', '\0', 'PM_TASK_EXCEL', 'ID', 'id');
INSERT INTO `bdf3_mapping_rule` VALUES ('5940bf2b-09f0-41b7-958f-9b08d901702a', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '6', '\0', 'member', '更新人', 'updator');
INSERT INTO `bdf3_mapping_rule` VALUES ('61e44fce-bfe0-40ee-86c7-a93f6c15e30a', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '30', '\0', 'contract-ledger-data', '业主收款开户行', 'ownnerCollectionOpeningBank');
INSERT INTO `bdf3_mapping_rule` VALUES ('648ecd9e-27cd-4c35-84eb-a4842cfb87f0', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '38', '\0', 'contract-ledger-data', '租金是否含税', 'rentPlusTax');
INSERT INTO `bdf3_mapping_rule` VALUES ('65b4ff68-e0ca-499c-a66f-dc04a84ebc92', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '18', '\0', 'contract-ledger-data', '租赁类型', 'leasingType');
INSERT INTO `bdf3_mapping_rule` VALUES ('668e37e4-f47c-4efe-9a9f-431637dbaed4', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '32', '\0', 'contract-ledger-data', '租赁房屋面积（平方米）', 'leasingHouseArea');
INSERT INTO `bdf3_mapping_rule` VALUES ('6ad7977d-8d47-4c48-8ed4-9d4fe93e8e13', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '8', '\0', 'contract-ledger-data', '共享情况', 'sharing');
INSERT INTO `bdf3_mapping_rule` VALUES ('6bfad76c-8c16-4cdb-91eb-246127aa1bcd', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '17', '\0', 'contract-ledger-data', '建设场景', 'constructionScene');
INSERT INTO `bdf3_mapping_rule` VALUES ('6d98413f-174f-4a70-97d7-fe13e50694cb', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '21', '\0', 'contract-ledger-data', '供电业主联系方式', 'powerSupplyOwnerContact');
INSERT INTO `bdf3_mapping_rule` VALUES ('72189498-593e-494a-b8c6-e0a21ec0cbb1', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '40', '\0', 'contract-ledger-data', '租金支付周期', 'rentPaymentCycle');
INSERT INTO `bdf3_mapping_rule` VALUES ('7bb70cd4-e46e-4043-8664-a088c3bef07f', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '2', '\0', 'member', '余额(元)', 'balance');
INSERT INTO `bdf3_mapping_rule` VALUES ('7c159480-ac61-4dc3-8150-59004b1f35ba', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '37', '\0', 'contract-ledger-data', '合同金额', 'contractAmount');
INSERT INTO `bdf3_mapping_rule` VALUES ('7f3d2684-4fb8-4197-8830-127c76ce820a', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '0', '\0', 'member', '姓名', 'name');
INSERT INTO `bdf3_mapping_rule` VALUES ('8500b6cd-01b7-47c4-a87c-78886784354a', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '7', '\0', 'member', '更新时间', 'updateDate');
INSERT INTO `bdf3_mapping_rule` VALUES ('8a5768b5-3b3d-4c95-b83b-726991d47dad', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '1', '\0', 'PM_TASK_EXCEL', '考核年度', 'checkYear');
INSERT INTO `bdf3_mapping_rule` VALUES ('8bbf2c8f-3fb0-4fdd-8d83-49b7295f1713', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '29', '\0', 'contract-ledger-data', '业主收款户名', 'ownnerCollectionAccountName');
INSERT INTO `bdf3_mapping_rule` VALUES ('8ce2f4d8-51b7-42c3-b13b-19569f14f0eb', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '42', '\0', 'contract-ledger-data', '预计下期缴纳日期', 'expectedNextPaymentDate');
INSERT INTO `bdf3_mapping_rule` VALUES ('8f47f7a0-acb9-4c22-bcda-c9caf1a8a069', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '35', '\0', 'contract-ledger-data', '押金', 'cashPledge');
INSERT INTO `bdf3_mapping_rule` VALUES ('9196af6a-661a-4bfd-84b6-506988d03c89', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '20', '\0', 'contract-ledger-data', '供电业主', 'powerSupplyOwner');
INSERT INTO `bdf3_mapping_rule` VALUES ('92ca9dae-ff89-46b5-a176-54e389ca5961', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '2', '\0', 'contract-ledger-data', '区县', 'county');
INSERT INTO `bdf3_mapping_rule` VALUES ('945b590a-95b6-4fa4-b85f-bd6c841eb3f8', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '45', '\0', 'contract-ledger-data', '是否另签用电协议', 'otherElectricityAgreement');
INSERT INTO `bdf3_mapping_rule` VALUES ('9b3aecec-ae51-46d6-87d8-b82dd1863b33', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '31', '\0', 'contract-ledger-data', '租赁场地面积（平方米）', 'leasingPlaceArea');
INSERT INTO `bdf3_mapping_rule` VALUES ('9d052a30-8cc1-493f-a034-697712d7ff12', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '24', '\0', 'contract-ledger-data', '租赁业主', 'leasingOwnner');
INSERT INTO `bdf3_mapping_rule` VALUES ('a6f1aeba-4977-4a29-8b14-c1128c9dc365', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '48', '\0', 'contract-ledger-data', '续签合同名称', 'renewContractName');
INSERT INTO `bdf3_mapping_rule` VALUES ('ad2817d9-43ac-40ab-aa08-89e0bd4270a6', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '25', '\0', 'contract-ledger-data', '联系人', 'contacts');
INSERT INTO `bdf3_mapping_rule` VALUES ('b43036bc-55ff-4400-95b0-7512dd64cf49', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '33', '\0', 'contract-ledger-data', '合同起始日期', 'contractStartDate');
INSERT INTO `bdf3_mapping_rule` VALUES ('b6e17ce1-1704-47c9-ae8b-a94b7ac484b9', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '13', '\0', 'contract-ledger-data', '片区', 'area');
INSERT INTO `bdf3_mapping_rule` VALUES ('be316b6c-7476-45ee-a9c5-6c6a7a73838d', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '26', '\0', 'contract-ledger-data', '联系电话', 'contactNumber');
INSERT INTO `bdf3_mapping_rule` VALUES ('be7b7acd-d861-48d3-9143-186c5ed38846', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '44', '\0', 'contract-ledger-data', '续签等级', 'renewLevel');
INSERT INTO `bdf3_mapping_rule` VALUES ('c4e3621e-9aac-4e95-ae33-ca5624044e8e', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '11', '\0', 'contract-ledger-data', '电信名称', 'telecomName');
INSERT INTO `bdf3_mapping_rule` VALUES ('c859f21c-fb28-4e28-9880-a333c4b5aec1', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '23', '\0', 'contract-ledger-data', '是否有合同扫描件', 'hasContractScanning');
INSERT INTO `bdf3_mapping_rule` VALUES ('ccc9e74d-bb94-47ed-9625-7081f887309b', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '7', '\0', 'contract-ledger-data', '原产权单位', 'originalPropertyUnits');
INSERT INTO `bdf3_mapping_rule` VALUES ('d224a16a-be5d-4e30-a037-bb8c6fe22a67', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '50', '\0', 'contract-ledger-data', '选址支付信息备注', 'locatePaymentInfoRemark');
INSERT INTO `bdf3_mapping_rule` VALUES ('d24f8512-8989-4a9e-aaee-e88d2b46f570', 'importer.defaultCellPostParser', null, 'importer.elCellPreParser', '${UUID}', '0', '\0', 'contract-ledger-data', 'id', 'id');
INSERT INTO `bdf3_mapping_rule` VALUES ('ddef8741-3b09-413e-8251-ec723701aab7', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '22', '\0', 'contract-ledger-data', '供电结算周期', 'powerSupplyPayPeriod');
INSERT INTO `bdf3_mapping_rule` VALUES ('e1ec12ce-895c-40c6-b251-047c8eac4e84', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '27', '\0', 'contract-ledger-data', '证件号', 'certificateNo');
INSERT INTO `bdf3_mapping_rule` VALUES ('e8dddc11-f690-4873-9f3f-09405738ec63', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '43', '\0', 'contract-ledger-data', '预计下期缴纳金额', 'expectedNextPaymentAmount');
INSERT INTO `bdf3_mapping_rule` VALUES ('ed034af9-0b5e-463f-bac6-ca9a0b50d41e', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '39', '\0', 'contract-ledger-data', '租金支付方式', 'rentPayment');
INSERT INTO `bdf3_mapping_rule` VALUES ('f0f2659f-6a5c-4ac7-b3b2-8aed9c86efc2', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '15', '\0', 'contract-ledger-data', '纬度', 'latitude');
INSERT INTO `bdf3_mapping_rule` VALUES ('f806e598-f125-48d6-b9e9-135fa4dce506', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '4', '\0', 'contract-ledger-data', '物理站址编码', 'physicsSiteCode');
INSERT INTO `bdf3_mapping_rule` VALUES ('fa611285-c886-4b13-9859-01fd52483335', 'importer.defaultCellPostParser', null, 'importer.defaultCellPreParser', null, '19', '\0', 'contract-ledger-data', '供电方式', 'powerSupplyMode');

-- ----------------------------
-- Table structure for bdf3_member_notice
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_member_notice`;
CREATE TABLE `bdf3_member_notice` (
  `id_` varchar(64) NOT NULL,
  `member_id_` varchar(64) DEFAULT NULL,
  `notice_id_` varchar(64) DEFAULT NULL,
  `read_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_member_notice
-- ----------------------------
INSERT INTO `bdf3_member_notice` VALUES ('299858f7-f790-49bd-98f0-8c0ffe1a7b9a', '14090284', 'ecc2b6c4-07f4-4155-9f04-f6f3b5a418b6', '2018-02-19 23:09:10');
INSERT INTO `bdf3_member_notice` VALUES ('32149b79-20b4-4170-9f15-b8710a120afe', '17092104', 'f85f5658-d2f1-4205-bf31-cd76351c00ee', '2018-02-21 21:48:54');
INSERT INTO `bdf3_member_notice` VALUES ('35c11df1-ab75-4e28-bc67-b9de7b7eb166', '17021264', 'ecc2b6c4-07f4-4155-9f04-f6f3b5a418b6', '2018-02-21 20:05:40');
INSERT INTO `bdf3_member_notice` VALUES ('52204478-d6c2-43d3-aa83-451cae86aedb', 'test1', 'f85f5658-d2f1-4205-bf31-cd76351c00ee', '2018-01-21 22:51:19');
INSERT INTO `bdf3_member_notice` VALUES ('62e0ac15-4f5b-4f52-9b55-37ac9966c45e', '17021264', 'f85f5658-d2f1-4205-bf31-cd76351c00ee', '2018-02-21 20:05:40');
INSERT INTO `bdf3_member_notice` VALUES ('669ae5a8-c303-4ff9-8dfd-c8ceef97e74d', '14090284', '063c8a26-21f2-47bd-922a-0f2d86da8a22', '2018-02-19 23:09:10');
INSERT INTO `bdf3_member_notice` VALUES ('8345a200-d771-4684-8ff4-c3c584326a41', 'test1', '063c8a26-21f2-47bd-922a-0f2d86da8a22', '2018-01-21 22:51:19');
INSERT INTO `bdf3_member_notice` VALUES ('95c319a0-bf14-440f-ab6c-72966f28cab9', 'test1', 'ecc2b6c4-07f4-4155-9f04-f6f3b5a418b6', '2018-01-21 22:51:19');
INSERT INTO `bdf3_member_notice` VALUES ('96f9a7f0-af2d-4ebb-91c5-5565e51d156c', '17092104', 'ea80ae09-3f6b-4347-a3ff-964ef4c956ae', '2018-02-21 21:48:54');
INSERT INTO `bdf3_member_notice` VALUES ('a1e86678-6bf0-45a8-b23f-f495487854e2', '14090284', 'ea80ae09-3f6b-4347-a3ff-964ef4c956ae', '2018-02-19 23:09:10');
INSERT INTO `bdf3_member_notice` VALUES ('b1bec621-5446-4d8f-b772-56c9fa2fadf9', 'admin', 'ea80ae09-3f6b-4347-a3ff-964ef4c956ae', '2018-01-21 22:52:03');
INSERT INTO `bdf3_member_notice` VALUES ('c56c09cf-3ba1-4844-be83-12551dd3aac6', '17021264', 'ea80ae09-3f6b-4347-a3ff-964ef4c956ae', '2018-02-21 20:05:40');
INSERT INTO `bdf3_member_notice` VALUES ('ca653f71-3383-48f0-b086-a2b94e3271db', '14090284', 'f85f5658-d2f1-4205-bf31-cd76351c00ee', '2018-02-19 23:09:10');
INSERT INTO `bdf3_member_notice` VALUES ('d2f94baa-5fe9-4599-93a2-8b338b64d57c', '17092104', 'ecc2b6c4-07f4-4155-9f04-f6f3b5a418b6', '2018-02-21 21:48:54');
INSERT INTO `bdf3_member_notice` VALUES ('db037b75-3083-4b36-8d68-49e967fa6bde', '17021264', '063c8a26-21f2-47bd-922a-0f2d86da8a22', '2018-02-21 20:05:40');
INSERT INTO `bdf3_member_notice` VALUES ('e7371168-c7fa-4ea9-b3cf-93e470436eff', '17092104', '063c8a26-21f2-47bd-922a-0f2d86da8a22', '2018-02-21 21:48:54');

-- ----------------------------
-- Table structure for bdf3_notice
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_notice`;
CREATE TABLE `bdf3_notice` (
  `id_` varchar(64) NOT NULL,
  `all_` bit(1) DEFAULT NULL,
  `content_` varchar(512) DEFAULT NULL,
  `expire_time_` datetime DEFAULT NULL,
  `group_id_` varchar(64) DEFAULT NULL,
  `send_time_` datetime DEFAULT NULL,
  `sender_` varchar(64) DEFAULT NULL,
  `title_` varchar(255) DEFAULT NULL,
  `type_` varchar(64) DEFAULT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  `url_` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_notice
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_organization
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_organization`;
CREATE TABLE `bdf3_organization` (
  `id_` varchar(255) NOT NULL,
  `data_source_info_id_` varchar(255) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_organization
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_permission
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_permission`;
CREATE TABLE `bdf3_permission` (
  `id_` varchar(64) NOT NULL,
  `attribute_` varchar(255) DEFAULT NULL,
  `resource_id_` varchar(64) DEFAULT NULL,
  `resource_type_` varchar(32) DEFAULT NULL,
  `role_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_permission
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_profile
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_profile`;
CREATE TABLE `bdf3_profile` (
  `id_` varchar(64) NOT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bdf3_profile
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_role
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_role`;
CREATE TABLE `bdf3_role` (
  `id_` varchar(64) NOT NULL,
  `description_` varchar(255) DEFAULT NULL,
  `name_` varchar(64) DEFAULT NULL,
  `platform_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_role
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_role_granted_authority
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_role_granted_authority`;
CREATE TABLE `bdf3_role_granted_authority` (
  `id_` varchar(64) NOT NULL,
  `actor_id_` varchar(64) DEFAULT NULL,
  `role_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_role_granted_authority
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_template
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_template`;
CREATE TABLE `bdf3_template` (
  `id_` varchar(64) NOT NULL,
  `css_` longtext,
  `description_` varchar(255) DEFAULT NULL,
  `displayable_` bit(1) DEFAULT NULL,
  `global_` bit(1) DEFAULT NULL,
  `html_` longtext,
  `icon_` varchar(255) DEFAULT NULL,
  `javascript_` longtext,
  `micro_program_` bit(1) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `offline_` bit(1) DEFAULT NULL,
  `url_` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bdf3_template
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_url
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_url`;
CREATE TABLE `bdf3_url` (
  `id_` varchar(64) NOT NULL,
  `description_` varchar(255) DEFAULT NULL,
  `icon_` varchar(255) DEFAULT NULL,
  `name_` varchar(64) DEFAULT NULL,
  `navigable_` bit(1) DEFAULT NULL,
  `order_` int(11) DEFAULT NULL,
  `parent_id_` varchar(64) DEFAULT NULL,
  `path_` varchar(512) DEFAULT NULL,
  `PLATFORM_ID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_url
-- ----------------------------
INSERT INTO `bdf3_url` VALUES ('02a56f52-b292-4e72-aace-f07ff790b93c', null, 'fa fa-object-group blue-text', '模板管理', '', '1', null, null, null);
INSERT INTO `bdf3_url` VALUES ('07efe0f8-1d7c-483c-bc3c-54e87f9f285b', null, 'fa fa-user blue-text', '用户管理', '', '1', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('1491d097-0795-4a0f-8608-7b452f8ac2be', null, 'fa fa-bars yellow-text', '菜单管理', '', '2', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.security.ui.view.UrlMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('2f858c99-1253-498b-801d-aa5c4f021542', null, 'fa fa-user-md blue-text', '角色管理', '', '3', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.security.ui.view.RoleMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('328d6a2a-3acf-4501-b621-5687f1b057e1', null, 'fa fa-code-fork green-text', '菜单权限', '', '4', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.security.ui.view.RoleUrlMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('35da2d908d6911e88a0bd8cb8a6fd2aa', null, 'fa fa-object-group blue-text', 'Bdf3', '', '0', '02a56f52-b292-4e72-aace-f07ff790b93c', 'com.mr.qdp.view.bdf3.Template.d', null);
INSERT INTO `bdf3_url` VALUES ('4523af08-01f0-44f5-be89-3b2241da0e9e', null, 'fa fa-shield yellow-text', '权限分配', '', '5', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.security.ui.view.PermissionMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('46f0ee9b-04a8-41f2-9008-81efa3fa2fe1', null, 'fa fa-graduation-cap blue-text', '角色分配', '', '6', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.security.ui.view.RoleAssignmentMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('5e2de3a3-730f-4dcd-92bd-a7990032d09d', null, 'fa fa-flash orange-text', 'Bdf3', '', '0', 'cfee98cf-3d1c-40e5-beb0-3bab6b9203a5', 'com.mr.qdp.view.bdf3.DomainSchema.d', null);
INSERT INTO `bdf3_url` VALUES ('6fd00879-07f0-4e30-8109-c405fead4d30', null, 'fa fa-clock-o blue-text', '日志查询', '', '7', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.log.view.LogInfoMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('7071cb64769711e881df360d9be5a99e', null, 'fa fa-bathtub purple-text', '全局配置', '\0', '9', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'com.mr.dress.view.sys.GlobalConf.d', null);
INSERT INTO `bdf3_url` VALUES ('8a1d87fd-4320-4480-92b4-e06c14f5812c', null, 'fa fa-cogs teal-text', '系统管理', '', '2', null, null, null);
INSERT INTO `bdf3_url` VALUES ('8b9f683f-b8e6-4eee-8cad-4fd8475860d4', null, 'fa fa-home', '个人中心', '', '0', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'bdf3.security.ui.view.PersonalCenter.d', null);
INSERT INTO `bdf3_url` VALUES ('92de9ac6-2e26-46eb-8de7-e2c27e0540c7', null, 'fa fa-book red-text', '数据字典', '', '8', '8a1d87fd-4320-4480-92b4-e06c14f5812c', 'com.bstek.bdf3.dictionary.ui.view.DictionaryMaintain.d', null);
INSERT INTO `bdf3_url` VALUES ('cfee98cf-3d1c-40e5-beb0-3bab6b9203a5', null, 'fa fa-flash orange-text', '编码阶段', '', '0', null, null, null);

-- ----------------------------
-- Table structure for bdf3_user
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_user`;
CREATE TABLE `bdf3_user` (
  `username_` varchar(64) NOT NULL,
  `account_non_expired_` bit(1) DEFAULT NULL,
  `account_non_locked_` bit(1) DEFAULT NULL,
  `administrator_` bit(1) DEFAULT NULL,
  `credentials_non_expired_` bit(1) DEFAULT NULL,
  `enabled_` bit(1) DEFAULT NULL,
  `nickname_` varchar(64) DEFAULT NULL,
  `password_` varchar(125) DEFAULT NULL,
  `platform_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`username_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_user
-- ----------------------------
INSERT INTO `bdf3_user` VALUES ('admin', '', '', '', '', '', '系统管理员', '{bcrypt}$2a$10$J9ryMi4/lw84.7JfYAInn.4DLlyTTjdMvTdqXXu5cokylxHM4orZm', null);

-- ----------------------------
-- Table structure for biz_bdf3_template
-- ----------------------------
DROP TABLE IF EXISTS `biz_bdf3_template`;
CREATE TABLE `biz_bdf3_template` (
  `ID` varchar(32) NOT NULL,
  `INIT_SQL` longtext COMMENT '初始化SQL',
  `MENU_SQL` longtext COMMENT '菜单SQL',
  `ENTITY` longtext COMMENT 'genEntity',
  `SERVICE` longtext COMMENT 'genService',
  `CONTROLLER` longtext COMMENT 'genController',
  `VIEW` longtext COMMENT 'genWeb',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '更新日期',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '更新人',
  `QUERY` varchar(255) DEFAULT NULL,
  `API` longtext,
  `IMPORTER` longtext,
  `IMPORTER_VO` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='BD3模板';

-- ----------------------------
-- Records of biz_bdf3_template
-- ----------------------------
INSERT INTO `biz_bdf3_template` VALUES ('0359f66a755c41739cacde63b54a5685', '<@compress>\nDROP TABLE IF EXISTS BIZ_${meta.tableName};\n\nCREATE TABLE BIZ_${meta.tableName} (\n	ID_ VARCHAR (32) NOT NULL,\n	<#list meta.fullList?chunk(1) as row> \n	<#list row as field>\n	<#if field.dataType ==\'String\'>\n	${field.columnName}_ VARCHAR (\n	<#if field.columnLength?exists>\n	${field.columnLength}\n	<#else>\n	255\n	</#if>\n	\n	) COMMENT \'${field.label}\',\n</#if>  \n<#if field.dataType ==\'Integer\'>\n	${field.columnName}_ INTEGER DEFAULT 0 COMMENT \'${field.label}\',\n</#if>\n<#if field.dataType ==\'Long\'>\n	${field.columnName}_ BIGINT COMMENT \'${field.label}\',\n</#if>	\n<#if field.dataType ==\'Date\'>\n	${field.columnName}_ DATE COMMENT \'${field.label}\',\n</#if>	\n<#if field.dataType ==\'Text\'>\n	${field.columnName}_ TEXT COMMENT \'${field.label}\',\n</#if>\n<#if field.dataType ==\'BigDecimal\'>\n	${field.columnName}_ DECIMAL COMMENT \'${field.label}\',\n</#if>\n  <#if field.dataType ==\'boolean\'>\n	${field.columnName}_ bit COMMENT \'${field.label}\',\n</#if>\n</#list>\n</#list>\n	CREATED_DATE_ DATETIME comment \'创建日期\', \n	CREATOR_ VARCHAR(32) comment \'创建人\', \n	UPDATE_DATE_ DATETIME comment \'修改日期\', \n	MODIFIER_ VARCHAR(32) comment \'修改人\', \n	PRIMARY KEY (ID_)\n) COMMENT = \'${meta.domainLabel}\';\n\n</@compress>\n', '/*${meta.domainLabel}*/\nINSERT INTO BDF3_URL (DESCRIPTION_, NAME_, ICON_, PATH_, NAVIGABLE_, ORDER_, PARENT_ID_, ID_) VALUES(NULL,\'${meta.domainLabel}\',\'fa fa-file-text blue-text\',\'com.${meta.company}.${meta.packagePrefix}.view.${meta.clazz?cap_first}.d\',1,20,NULL,REPLACE(UUID(),\'-\',\'\'));', 'package com.${meta.company}.${meta.packagePrefix}.entity;\n\n\nimport java.util.Date;\n\nimport javax.persistence.Column;\nimport javax.persistence.Entity;\nimport javax.persistence.Id;\nimport javax.persistence.Table;\nimport javax.persistence.Temporal;\nimport javax.persistence.TemporalType;\nimport org.hibernate.annotations.Type;\n\nimport com.bstek.bdf3.dorado.jpa.annotation.Generator;\nimport com.bstek.bdf3.dorado.jpa.policy.impl.CreatedDatePolicy;\nimport com.bstek.bdf3.dorado.jpa.policy.impl.UpdatedDatePolicy;\nimport com.bstek.bdf3.security.ui.policy.CreatorPolicy;\nimport com.bstek.bdf3.security.ui.policy.ModifierPolicy;\nimport com.bstek.dorado.annotation.PropertyDef;\nimport com.${meta.company}.${meta.packagePrefix}.policy.common.UuidPolicy;\n\n/**\n * ${meta.domainLabel}\n */\n@Entity\n@Table(name = \"BIZ_${meta.tableName}\")\npublic class ${meta.clazz?cap_first} {\n \n@Id\n	@Column(name = \"ID_\", length = 64)\n	@PropertyDef(label = \"ID\")\n	@Generator(policy = UuidPolicy.class)\n	private String id;\n\n	\n                            \n<#list meta.fullList?chunk(1) as row> \n	<#list row as field>\n \n    @PropertyDef(label = \"${field.label}\")\n	<#if field.dataType ==\"Integer\">\n         @Column(name = \"${field.columnName}_\", length = <#if field.columnLength?exists>${field.columnLength}<#else>11</#if>)\n		private Integer ${field.name};\n		<#elseif field.dataType ==\"Long\">\n          @Column(name = \"${field.columnName}_\", length = <#if field.columnLength?exists>${field.columnLength}<#else>19</#if>)\n		private Long ${field.name}; \n		<#elseif field.dataType ==\"Text\">\n		@Type(type = \"text\")\n         @Column(name = \"${field.columnName}_\")\n		private String ${field.name}; \n        <#elseif field.dataType ==\"Date\">\n         @Temporal(TemporalType.TIMESTAMP)\n          @Column(name = \"${field.columnName}_\")\n		private Date ${field.name}; \n         <#elseif field.dataType ==\"boolean\">\n          @Column(name = \"${field.columnName}_\")\n		private boolean ${field.name};\n		<#else>\n         @Column(name = \"${field.columnName}_\")\n		private ${field.dataType} ${field.name};\n		</#if> \n</#list>\n</#list>  \n\n @PropertyDef(label = \"创建日期\")\n	@Column(name = \"CREATED_DATE_\")\n	@Temporal(TemporalType.TIMESTAMP)\n	@Generator(policy = CreatedDatePolicy.class)\n	private Date createdDate;\n\n	@Column(name = \"CREATOR_\")\n	@PropertyDef(label = \"创建人\")\n	@Generator(policy = CreatorPolicy.class)\n	private String creator;\n\n	@Column(name = \"UPDATE_DATE_\")\n	@PropertyDef(label = \"修改日期\")\n	@Temporal(TemporalType.TIMESTAMP)\n	@Generator(policy = UpdatedDatePolicy.class)\n	private Date updateDate;\n\n	@Column(name = \"MODIFIER_\")\n	@PropertyDef(label = \"修改人\")\n	@Generator(policy = ModifierPolicy.class)\n	private String modifier;\n\n\n	public String getId() {\n		return id;\n	}\n\n	public void setId(String id) {\n		this.id = id;\n	}\n	\n	\n	\n<#list meta.fullList?chunk(1) as row> \n	<#list row as field> \n		  \n         <#if field.dataType ==\"boolean\">\n          public boolean is${field.name?cap_first}() {\n		return ${field.name};\n	}\n\n	public void set${field.name?cap_first}(boolean ${field.name}) {\n		this.${field.name} = ${field.name};\n	}\n	<#elseif field.dataType ==\"Text\">\n		  public String is${field.name?cap_first}() {\n		return ${field.name};\n	}\n\n	public void set${field.name?cap_first}(String ${field.name}) {\n		this.${field.name} = ${field.name};\n	}\n		<#else>\n          public ${field.dataType} get${field.name?cap_first}() {\n		return ${field.name};\n	}\n\n	public void set${field.name?cap_first}(${field.dataType} ${field.name}) {\n		this.${field.name} = ${field.name};\n	} \n		</#if> \n		\n	  \n</#list>\n</#list>  \n \npublic Date getCreatedDate() {\n		return createdDate;\n	}\n\n	public void setCreatedDate(Date createdDate) {\n		this.createdDate = createdDate;\n	}\n\n	public String getCreator() {\n		return creator;\n	}\n\n	public void setCreator(String creator) {\n		this.creator = creator;\n	}\n\n	public Date getUpdateDate() {\n		return updateDate;\n	}\n\n	public void setUpdateDate(Date updateDate) {\n		this.updateDate = updateDate;\n	}\n\n	public String getModifier() {\n		return modifier;\n	}\n\n	public void setModifier(String modifier) {\n		this.modifier = modifier;\n	}\n	 \n	\n}', ' \npackage com.${meta.company}.${meta.packagePrefix}.service;\n\nimport org.slf4j.Logger;\nimport org.springframework.stereotype.Service;\n\nimport com.${meta.company}.${meta.packagePrefix}.utils.common.MyLog;\n\n@Service\npublic class ${meta.clazz}Service  {\n  \n    \n    \n  private static Logger log = MyLog.get();\n             \n\n                                    \n} ', '<@compress>\npackage com.${meta.company}.${meta.packagePrefix}.controller;\nimport java.util.List;\nimport java.util.Map;\n\nimport org.slf4j.Logger;\nimport org.springframework.stereotype.Controller;\nimport org.springframework.transaction.annotation.Transactional;\n\nimport com.bstek.bdf3.dorado.jpa.JpaUtil;\nimport com.bstek.bdf3.log.annotation.Log;\nimport com.bstek.dorado.annotation.DataProvider;\nimport com.bstek.dorado.annotation.DataResolver;\nimport com.bstek.dorado.data.provider.Criteria;\nimport com.bstek.dorado.data.provider.Page;\nimport com.${meta.company}.${meta.packagePrefix}.entity.*;\nimport com.${meta.company}.${meta.packagePrefix}.manage.QueryFilter;\nimport com.${meta.company}.${meta.packagePrefix}.utils.common.MyLog;\n \n@Controller\n@Transactional(readOnly = true)\npublic class ${meta.clazz}Controller  extends QueryFilter {\n\n   \n  private static Logger log = MyLog.get();\n\n\n	@DataResolver\n	@Transactional\n	@Log(module = \"${meta.domainLabel}\", category = \"CRUD\")\n	public void save(List<${meta.clazz}> ${meta.clazz?uncap_first}s) {\n		JpaUtil.save(${meta.clazz?uncap_first}s);\n	}\n	\n  @DataProvider\n	public void query(Page<${meta.clazz}> page, Map<String, Object> parameter) {\n		Criteria criteria = new Criteria();\n		criteria = condition(criteria, parameter);\n		JpaUtil.linq(${meta.clazz}.class).where(criteria).desc(\"updateDate\").paging(page);\n	}    \n}\n\n</@compress>', '<@compress>\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ViewConfig>\n  <Arguments/>\n  <Context/>\n  <Model>\n   <DataType name=\"${meta.clazz}\">\n      <Property name=\"creationType\">com.${meta.company}.${meta.packagePrefix}.entity.${meta.clazz}</Property>\n      <PropertyDef name=\"id\">\n        <Property name=\"dataType\">String</Property>\n      </PropertyDef>\n      <#list meta.fullList?chunk(1) as row> \n	<#list row as field>\n		 <PropertyDef name=\"${field.name}\"> \n		<#if field.dataType ==\"Date\">\n	<Property name=\"dataType\">DateTime</Property>\n	<#elseif field.dataType ==\"Text\">\n	<Property name=\"dataType\">String</Property>\n	<#else>\n	<Property name=\"dataType\">${field.dataType}</Property>\n		</#if>\n	   <Property name=\"label\">${field.label}</Property>\n        <#if field.required?exists && field.required ==\'y\'>\n        <Property name=\"required\">true</Property>\n        </#if>\n        <#if (field.fromEnum?exists&&field.fromEnum !=\'\')>\n        <Property name=\"mapping\">\n          <Property name=\"mapValues\">${r\'$\'}{dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;${field.lookupName}&quot;)}</Property>\n        </Property>\n         \n        </#if>\n        <#if (field.fromTable?exists&&field.fromTable !=\'\')>\n        <Property name=\"mapping\">\n          <Property name=\"mapValues\">${r\'$\'}{dorado.getDataProvider(&quot;${meta.clazz?uncap_first}#get${field.dbEntityName?cap_first}KvMap&quot;).getResult()}</Property>\n        </Property> \n        </#if>\n      </PropertyDef>\n	</#list>\n</#list>\n<#list meta.fullList?chunk(1) as row> \n	<#list row as field>\n		<#if (field.fromEnum?exists&&field.fromEnum !=\'\')>\n        <#elseif (field.fromTable?exists&&field.fromTable !=\'\')>\n        <PropertyDef name=\"refTable${field.name?cap_first}\">\n         <Property name=\"dataType\">String</Property>\n        <Property name=\"label\">${field.label}</Property>\n        </PropertyDef> \n        <#else> \n        </#if> \n	</#list>\n</#list>\n\n<PropertyDef name=\"createdDate\">\n        <Property/>\n        <Property name=\"label\">创建日期</Property>\n		<Property name=\"dataType\">DateTime</Property>\n</PropertyDef>\n<PropertyDef name=\"creator\">\n        <Property/>\n        <Property name=\"label\">创建人</Property>\n</PropertyDef>\n<PropertyDef name=\"updateDate\">\n        <Property/>\n        <Property name=\"label\">修改日期</Property>\n<Property name=\"dataType\">DateTime</Property>\n</PropertyDef>\n<PropertyDef name=\"modifier\">\n        <Property/>\n        <Property name=\"label\">修改人</Property>\n</PropertyDef>\n\n\n<#list meta.fullList?chunk(1) as row> \n	<#list row as field>\n		<#if (field.imported?exists&&field.imported !=\'\')>\n <PropertyDef name=\"${field.name}Tip\">\n         <Property name=\"dataType\">String</Property>\n        </PropertyDef> \n		</#if>\n</#list>\n</#list> \n\n<PropertyDef name=\"importDetail\">\n        <Property/>\n        <Property name=\"label\">导入详情</Property>\n</PropertyDef>\n\n</DataType>\n\n<DataType name=\"Condition\"> \n      <#list meta.fullList?chunk(1) as row> \n	<#list row as field>\n		 \n		<#if field.dataType ==\"Date\">\n	<PropertyDef name=\"${field.name}_startTime\">\n        <Property name=\"dataType\">DateTime</Property>\n        <Property name=\"label\">${field.label}(起)</Property>\n     </PropertyDef>\n      <PropertyDef name=\"${field.name}_endTime\">\n        <Property name=\"dataType\">DateTime</Property>\n        <Property name=\"label\">${field.label}(至)</Property>\n     </PropertyDef>\n     </#if>\n	<#if field.dataType ==\"Text\">\n	<PropertyDef name=\"${field.name}\">\n	<Property name=\"dataType\">String</Property>\n	</PropertyDef>\n	 </#if> \n	\n        <#if (field.fromEnum?exists&&field.fromEnum !=\'\')>\n        <PropertyDef name=\"${field.name}_eq\">\n        <Property name=\"mapping\">\n          <Property name=\"mapValues\">${r\'$\'}{dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;${field.lookupName}&quot;)}</Property>\n        </Property> \n         <#else>\n          <PropertyDef name=\"${field.name}\"> \n        </#if>\n        <#if (field.fromTable?exists&&field.fromTable !=\'\')>\n        <Property name=\"mapping\">\n          <Property name=\"mapValues\">${r\'$\'}{dorado.getDataProvider(&quot;${meta.clazz?uncap_first}#get${field.dbEntityName?cap_first}KvMap&quot;).getResult()}</Property>\n        </Property> \n        </#if>\n        <Property name=\"dataType\">String</Property> \n	   <Property name=\"label\">${field.label}</Property>\n        </PropertyDef> \n	</#list>\n</#list>\n</DataType>\n  \n  \n  </Model>\n  <View><Property name=\"packages\">font-awesome</Property>\n    <Property name=\"title\">${meta.domainLabel}信息维护</Property>\n    <DataSet id=\"ds${meta.clazz?cap_first}\">\n      <Property name=\"dataProvider\">${meta.clazz?uncap_first}Controller#query</Property>\n      <Property name=\"pageSize\">20</Property>\n      <Property name=\"dataType\">[${meta.clazz?cap_first}]</Property>\n      <Property name=\"loadMode\">lazy</Property>\n    </DataSet>\n    <UpdateAction id=\"updateAction\">\n      <Property name=\"successMessage\">操作成功!</Property>\n      <Property name=\"executingMessage\">正在保存...</Property>\n      <Property name=\"dataResolver\">${meta.clazz?uncap_first}Controller#save</Property>\n      <UpdateItem>\n        <Property name=\"dataSet\">ds${meta.clazz?cap_first}</Property>\n      </UpdateItem>\n    </UpdateAction>\n    \n     <AutoForm id=\"formCondition\">\n     <ClientEvent name=\"onKeyDown\">if (arg.keyCode === 13) {&#xD;\n	window.clearTimeout(self.urlQueryTimeout);&#xD;\n	self.urlQueryTimeout = window.setTimeout(function() {&#xD;\n		var data = view.get(&quot;#formCondition.entity&quot;);&#xD;\n		with (view.get(&quot;#ds${meta.clazz?cap_first}&quot;)) {&#xD;\n			set(&quot;parameter&quot;, data);&#xD;\n			flushAsync();&#xD;\n		}&#xD;\n	}, 250);&#xD;\n}</ClientEvent>\n     <Property name=\"labelWidth\">100</Property>\n      <Property name=\"cols\">*,*,*,*</Property>\n       <Property name=\"createPrivateDataSet\">true</Property>\n      <Property name=\"dataType\">Condition</Property>\n      <Property name=\"labelAlign\">center</Property>\n      <Property name=\"showHint\">false</Property>\n      <#list meta.searchConditionList?chunk(1) as row> \n	<#list row as field>\n	<#if field.dataType ==\"Date\">\n	<AutoFormElement> \n		 <Property name=\"name\">${field.name}_startTime</Property>\n        <Property name=\"label\">${field.label}(起)</Property>\n         \n         <Editor/> \n         </AutoFormElement>\n         <AutoFormElement>\n		<Property name=\"name\">${field.name}_endTime</Property>\n        <Property name=\"label\">${field.label}(至)</Property>\n         \n         <Editor/> \n      </AutoFormElement>\n      <#elseif (field.fromEnum?exists&&field.fromEnum !=\'\')>\n      <AutoFormElement>\n        <Property name=\"name\">${field.name}_eq</Property>\n        <Property name=\"label\">${field.label}</Property> \n         <Editor/> \n          </AutoFormElement>\n          <#else>\n      <AutoFormElement>\n        <Property name=\"name\">${field.name}</Property>\n        <Property name=\"label\">${field.label}</Property>\n         \n         <Editor/> \n          </AutoFormElement>\n        </#if>\n       \n	</#list>\n</#list>\n      \n    </AutoForm>\n    \n    <ToolBar> \n       <ToolBarButton>\n        <ClientEvent name=\"onClick\">var data = view.get(&quot;#formCondition.entity&quot;);&#xD;\nwith (view.get(&quot;#ds${meta.clazz}&quot;)){&#xD;\n	set(&quot;parameter&quot;, data);&#xD;\n	flushAsync();&#xD;\n}</ClientEvent>\n        <Property name=\"caption\">查询</Property>\n        <Property name=\"iconClass\">fa fa-search</Property>\n      </ToolBarButton>\n      <ToolBarButton>\n        <ClientEvent name=\"onClick\">var datas = view.get(&quot;#ds${meta.clazz}.data&quot;);&#xD;\ndatas.insert();&#xD;\nview.get(&quot;#dialog${meta.clazz}&quot;).show();&#xD;\narg.processDefault=false;</ClientEvent>\n        <Property name=\"caption\">新增</Property>\n        <Property name=\"iconClass\">fa fa-plus</Property>\n      </ToolBarButton>\n      <ToolBarButton>\n        <ClientEvent name=\"onClick\">var data=view.get(&quot;#ds${meta.clazz}.data&quot;);&#xD;\nif(data.current){&#xD;\n	view.get(&quot;#dialog${meta.clazz}&quot;).show();&#xD;\n}else{&#xD;\n	dorado.MessageBox.alert(&quot;当前表没有信息可供编辑!&quot;);&#xD;\n}</ClientEvent>\n        <Property name=\"caption\">修改</Property>\n        <Property name=\"iconClass\">fa fa-pencil-square-o</Property>\n      </ToolBarButton>\n   <ToolBarButton>\n        <ClientEvent name=\"onClick\">var updateAction=view.get(&quot;#updateAction&quot;);&#xD;\nvar selection = view.get(&quot;#dg${meta.clazz?cap_first}&quot;).get(&quot;selection&quot;);&#xD;\n&#xD;\nif(0 != selection.length) {&#xD;\n	dorado.MessageBox.confirm(&quot;确认操作吗?&quot;,function(){&#xD;\n &#xD;\n		for (var i = 0; i &lt; selection.length; i++) {&#xD;\n		var select = selection[i];&#xD;\n			select.remove();&#xD;\n	}&#xD;\n		&#xD;\n	updateAction.execute();&#xD;\n	view.get(&quot;#ds${meta.clazz}&quot;).flushAsync();	&#xD;\n})&#xD;\n&#xD;\n} else {&#xD;\ndorado.MessageBox.alert(&quot;请选择需要操作的记录！&quot;);&#xD;\n}&#xD;\n&#xD;\n&#xD;\n</ClientEvent>\n        <Property name=\"iconClass\">fa fa-trash-o</Property>\n        <Property name=\"caption\">删除</Property>\n      </ToolBarButton>\n      <ToolBarButton>\n        <ClientEvent name=\"onClick\">view.get(&quot;#autoUploadProgressBar&quot;).set(&quot;value&quot;, \'0\');\nview.get(&quot;#dialogImportInit&quot;).show();</ClientEvent>\n        <Property name=\"caption\">导入</Property>\n        <Property name=\"iconClass\">fa fa-cloud-upload</Property>\n      </ToolBarButton>\n  <ToolBarButton>\n        <Property name=\"caption\">导出</Property>\n        <Property name=\"iconClass\">fa fa-cloud-download</Property>\n        <Property name=\"action\">exportAction</Property>\n      </ToolBarButton>\n      <Fill/>\n     \n      <DataPilot>\n        <Property name=\"dataSet\">ds${meta.clazz}</Property>\n        <Property name=\"itemCodes\">pages,pageSize</Property>\n      </DataPilot>\n   \n    </ToolBar>\n     <DataGrid id=\"dg${meta.clazz?cap_first}\">\n      <Property name=\"dataSet\">ds${meta.clazz?cap_first}</Property>\n      <Property name=\"dataType\">${meta.clazz?cap_first}</Property>\n           <Property name=\"selectionMode\">multiRows</Property>\n           <Property name=\"readOnly\">true</Property>\n           <RowSelectorColumn/>\n      <RowNumColumn/>\n            <#list meta.searchResultList?chunk(1) as row> \n	<#list row as field>   \n      <DataColumn name=\"${field.label}\">\n      <Property name=\"caption\">${field.label}</Property>\n       <#if (field.fromEnum?exists&&field.fromEnum !=\'\')>\n         <Property name=\"property\">${field.name}</Property>\n        <#elseif (field.fromTable?exists&&field.fromTable !=\'\')>\n        <Property name=\"property\">refTable${field.name?cap_first}</Property>\n        <#else>\n        <Property name=\"property\">${field.name}</Property>\n        </#if> \n        <Property name=\"align\">center</Property>\n      </DataColumn>\n	</#list>\n</#list>\n \n    </DataGrid>\n    <Dialog id=\"dialog${meta.clazz?cap_first}\">\n          <ClientEvent name=\"onClose\">var data=view.get(&quot;#ds${meta.clazz?cap_first}&quot;).getData();&#xD;\ndata.cancel();&#xD;\n</ClientEvent>\n      <Property name=\"center\">true</Property>\n      <Property name=\"maximizeable\">true</Property>\n      <Property name=\"width\">1024</Property>\n      <Property name=\"height\">500</Property>\n      <Property name=\"modal\">true</Property>\n      <Property name=\"closeable\">true</Property>\n      <Property name=\"caption\">详情</Property>\n      <Buttons>\n        \n        <Button> \n          <ClientEvent name=\"onClick\">var data=view.get(&quot;#ds${meta.clazz?cap_first}&quot;).getData();\nvar dialog=view.get(&quot;#dialog${meta.clazz?cap_first}&quot;); \ndata.cancel();\ndialog.hide();</ClientEvent>\n          <Property name=\"caption\">关闭</Property>\n           <Property name=\"iconClass\">fa fa-arrow-circle-o-left</Property>\n          <Property name=\"ui\">decline</Property>\n        </Button>\n        <Button>\n          <ClientEvent name=\"onClick\">var dialog=view.get(&quot;#dialog${meta.clazz?cap_first}&quot;);&#xD;\nvar action=view.get(&quot;#updateAction&quot;);&#xD;\ndorado.MessageBox.confirm(&quot;确认操作吗?&quot;,function(){&#xD;\n	action.execute(function(){&#xD;\n		dialog.hide();&#xD;\n		view.get(&quot;#ds${meta.clazz?cap_first}&quot;).flushAsync(); &#xD;\n\n	});&#xD;\n})</ClientEvent>\n          <Property name=\"caption\">确定</Property>\n          <Property name=\"iconClass\">fa fa-check-circle</Property>\n          <Property name=\"ui\">highlight</Property>\n        </Button>\n      </Buttons>\n      \n      <Children>\n        <AutoForm>\n        <Property name=\"labelWidth\">100</Property>\n          <Property name=\"dataSet\">ds${meta.clazz?cap_first}</Property>\n          <Property name=\"cols\">*,*</Property>\n          <Property name=\"labelAlign\">center</Property>\n          <Property name=\"showHint\">false</Property>\n          <Property name=\"showHintMessage\">true</Property>\n                <#list meta.editableList?chunk(1) as row> \n	<#list row as field>\n       <AutoFormElement name=\"${field.name}\">\n            <Property name=\"name\">${field.name}</Property>\n            <Property name=\"property\">${field.name}</Property>\n             <Property name=\"label\">${field.label}</Property>\n             \n            <Editor/>\n          </AutoFormElement>\n	</#list>\n</#list>\n         </AutoForm>\n      </Children>\n      <Tools/>\n    </Dialog>\n     <Dialog id=\"dialogImportInit\">\n      <Property name=\"caption\">文件上传</Property>\n      <Property name=\"modal\">true</Property>\n      <Property name=\"autoAdjustPosition\">false</Property>\n      <Property name=\"border\">curve</Property>\n      <Property name=\"center\">true</Property>\n      <Property name=\"resizeable\">false</Property>\n      <Property name=\"shadowMode\">sides</Property>\n      <Buttons>\n        <Button layoutConstraint=\"bottom\">\n          <Property name=\"action\">autoUploadAction</Property>\n          <Property name=\"caption\">上传</Property>\n        </Button>\n      </Buttons>\n      <Children>\n        <AutoForm id=\"uploadForm\" layoutConstraint=\"top\">\n          <Property name=\"labelWidth\">100</Property>\n          <Property name=\"cols\">*</Property>\n          <Property name=\"showHint\">false</Property>\n          <Property name=\"createPrivateDataSet\">true</Property>\n          <Link layoutConstraint=\"align:center\">\n            <Property name=\"text\">下载导入模板</Property>\n            <Property name=\"href\">http://dywxdz.oss-cn-shanghai.aliyuncs.com/excel/template/%E5%AD%A6%E7%94%9F%E5%AF%BC%E5%85%A5%E6%A8%A1%E6%9D%BF.xlsx</Property>\n          </Link>\n        </AutoForm>\n        <UploadAction id=\"autoUploadAction\">\n          <ClientEvent name=\"onUploadProgress\">view.get(&quot;#autoUploadProgressBar&quot;).set(&quot;value&quot;, arg.total.percent);\nvar prettySize = function(value) {\nvar _format = function(value, unit) {\nreturn (value.toFixed(1) + \' \' + unit).replace(\'.0\', \'\');\n};\nvar K = 1024;\nvar M = K * K;\nvar G = M * K;\nvar T = G * K;\nvar dividers = [ T, G, M, K, 1 ];\nvar units = [ \'TB\', \'GB\', \'MB\', \'KB\', \'B\' ];\nif (value == 0) {\nreturn \'0B\';\n} else if (value &lt; 0) {\nreturn \'Invalid size\';\n}\nvar result = \'\';\nvar temp = 0;\nfor ( var i = 0; i &lt; dividers.length; i++) {\nvar divider = dividers[i];\nif (value >= divider) {\ntemp = value / divider;\nif (temp &lt; 1.05) {\nresult = _format(value,\nunits[((i + 1) &lt; units.length) ? (i + 1) : i]);\n} else {\nresult = _format(temp, units[i]);\n}\nbreak;\n}\n}\nreturn result;\n};</ClientEvent>\n          <ClientEvent name=\"onFileUploaded\">view.get(&quot;#dialogImportInit&quot;).close();\nif(arg.returnValue.success){\n	dorado.widget.NotifyTipManager.notify(&quot;导入成功!&quot;);\n}else{\n	view.get(&quot;#ds${meta.clazz}Fail&quot;).setData(arg.returnValue.${meta.clazz?uncap_first}ErrorList);\n	view.get(&quot;#dialog${meta.clazz}Fail&quot;).show();\n}\nview.get(&quot;#ds${meta.clazz}&quot;).flushAsync();\n\n</ClientEvent>\n          <Property name=\"maxFileSize\">100MB</Property>\n          <Property name=\"fileResolver\">${meta.clazz?uncap_first}Service#process</Property>\n          <Property name=\"autoUpload\">true</Property>\n          <Filters>\n            <Filter>\n              <Property name=\"title\">Excel files</Property>\n              <Property name=\"extensions\">xls,xlsx</Property>\n            </Filter>\n          </Filters>\n        </UploadAction>\n        <ProgressBar id=\"autoUploadProgressBar\" layoutConstraint=\"type:top;top:50%;left:10;right:10\">\n          <Property name=\"textPattern\">{percent}%</Property>\n        </ProgressBar>\n      </Children>\n      <Tools/>\n    </Dialog>\n   \n    <Dialog id=\"dialog${meta.clazz}Fail\">\n      <ClientEvent name=\"onClose\">var data=view.get(&quot;#ds${meta.clazz}&quot;).getData();\ndata.cancel();\n</ClientEvent>\n      <Property name=\"center\">true</Property>\n      <Property name=\"maximizeable\">true</Property>\n      <Property name=\"modal\">true</Property>\n      <Property name=\"closeable\">true</Property>\n      <Property name=\"caption\">失败数据</Property>\n      <Property name=\"width\">800</Property>\n      <Property name=\"height\">400</Property>\n      <Property name=\"maximized\">true</Property>\n      <Buttons>\n        <Button>\n          <ClientEvent name=\"onClick\">var data=view.get(&quot;#ds${meta.clazz}Fail&quot;).getData();\nvar dialog=view.get(&quot;#dialog${meta.clazz}Fail&quot;); \ndata.cancel();\ndialog.hide(); </ClientEvent>\n          <Property name=\"caption\">关闭</Property>\n          <Property name=\"iconClass\">fa fa-share</Property>\n        </Button>\n      </Buttons>\n      <Children>\n        <DataSet id=\"ds${meta.clazz}Fail\">\n          <Property name=\"dataType\">[${meta.clazz}]</Property>\n        </DataSet>\n        <Tip>\n          <Property name=\"caption\">导入时存在失败数据，请根据提示信息修改并重新导入</Property>\n          <Property name=\"floating\">false</Property>\n        </Tip>\n        <DataGrid>\n          <Property name=\"dataSet\">ds${meta.clazz}Fail</Property>\n          <Property name=\"highlightCurrentRow\">false</Property>\n          <Property name=\"highlightHoverRow\">false</Property>\n          <Property name=\"highlightSelectedRow\">false</Property>\n          <Property name=\"readOnly\">true</Property>\n          <RowNumColumn/>\n          <ColumnGroup>\n            <Property name=\"caption\">导入数据</Property>\n <#list meta.importedList?chunk(1) as row> \n	<#list row as field>   \n      <DataColumn name=\"${field.label}\">\n      \n      <#if (field.imported?exists&&field.imported !=\'\')> \n         <ClientEvent name=\"onRenderCell\">var ${field.name}Tip = arg.data.get(&quot;${field.name}Tip&quot;);&#xD;\narg.dom.style.background = &quot;&quot;;&#xD;\nif (${field.name}Tip) {&#xD;\n	arg.dom.style.background = &quot;#fcc5c5&quot;;&#xD;\n}&#xD;\n&#xD;\n$(arg.dom).on(&quot;mouseover&quot;,&#xD;\nfunction() {&#xD;\n    if (${field.name}Tip) {&#xD;\n        var x = window.event.pageX;&#xD;\n        var y = window.event.pageY;&#xD;\n        var tip = view.get(&quot;#tip&quot;);&#xD;\n        tip.set(&quot;text&quot;, ${field.name}Tip);&#xD;\n        tip.set(&quot;offsetLeft&quot;, x);&#xD;\n        tip.set(&quot;offsetTop&quot;, y);&#xD;\n        tip.show();&#xD;\n    } else {&#xD;\n        view.get(&quot;#tip&quot;).hide();&#xD;\n    }&#xD;\n});&#xD;\n&#xD;\n&#xD;\narg.processDefault = true;</ClientEvent>\n </#if>\n     \n      <Property name=\"caption\">${field.label}</Property>\n      <Property name=\"property\">${field.name}</Property>\n        <Property name=\"align\">center</Property>\n      </DataColumn>\n	</#list>\n</#list>  \n \n          </ColumnGroup>\n          <DataColumn>\n            <Property name=\"property\">importDetail</Property>\n            <Property name=\"caption\">导入详情</Property>\n\n          </DataColumn>\n          <IndicatorColumn/>\n        </DataGrid>\n\n <Tip id=\"tip\"/>\n        <Export2ReportAction id=\"eaFail\">\n          <Property name=\"template\">dgImportFail</Property>\n          <Property name=\"dataScope\">currentPage</Property>\n          <Property name=\"executingMessage\">正在导出……</Property>\n          <Property name=\"successMessage\">数据导出成功。</Property>\n          <Property name=\"extension\">xlsx</Property>\n          <Property name=\"maxSize\">10000</Property>\n          <Property name=\"fileName\">订单导入报错详情</Property>\n        </Export2ReportAction>\n      </Children>\n      <Tools/>\n    </Dialog>\n    <Export2ReportAction id=\"exportAction\">\n      <Property name=\"template\">dg${meta.clazz?cap_first}</Property>\n      <Property name=\"dataScope\">serverAll</Property>\n      <Property name=\"executingMessage\">正在导出……</Property>\n      <Property name=\"successMessage\">数据导出成功。</Property>\n      <Property name=\"extension\">xlsx</Property>\n      <Property name=\"maxSize\">10000</Property>\n      <Property name=\"fileName\">${meta.domainLabel}</Property>\n    </Export2ReportAction>\n  </View>\n</ViewConfig>\n\n</@compress>\n', null, null, null, null, null, 'package com.${meta.company}.${meta.packagePrefix}.controller;\n\nimport java.util.Date;\nimport java.util.List;\nimport java.util.Map;\n\n\nimport org.malagu.linq.JpaUtil;\nimport org.springframework.transaction.annotation.Transactional;\nimport org.springframework.web.bind.annotation.DeleteMapping;\nimport org.springframework.web.bind.annotation.GetMapping;\nimport org.springframework.web.bind.annotation.PathVariable;\nimport org.springframework.web.bind.annotation.PostMapping;\nimport org.springframework.web.bind.annotation.PutMapping;\nimport org.springframework.web.bind.annotation.RequestParam;\nimport org.springframework.web.bind.annotation.RestController;\n\nimport com.${meta.company}.${meta.packagePrefix}.dto.JsonResult;\nimport com.${meta.company}.${meta.packagePrefix}.dto.ResultCode;\nimport com.${meta.company}.${meta.packagePrefix}.entity.${meta.clazz};\nimport com.${meta.company}.${meta.packagePrefix}.utils.common.MyBeanUtil;\n\nimport io.swagger.annotations.ApiImplicitParam;\nimport io.swagger.annotations.ApiImplicitParams;\nimport io.swagger.annotations.ApiOperation;\n\n@RestController\npublic class ${meta.clazz}Controller {\n\n	@ApiOperation(value = \"获取所有的${meta.domainLabel}\", notes = \"http://localhost:8081/api/${meta.clazz?uncap_first}s\")\n	@GetMapping(\"/${meta.clazz?uncap_first}s\")\n	@Transactional\n	public JsonResult list(@RequestParam Map<String, String> map) {\n		try {\n			List<${meta.clazz}>  ${meta.clazz?uncap_first}List = JpaUtil.linq(${meta.clazz}.class).list();\n			return new JsonResult(ResultCode.SUCCESS, \"操作成功！\",  ${meta.clazz?uncap_first}List);\n		} catch (Exception e) {\n			return new JsonResult(ResultCode.EXCEPTION, \"操作失败！\", e.getMessage());\n		}\n	}\n\n \n\n	@ApiOperation(value = \"加载${meta.domainLabel}详情\", notes = \"http://localhost:8081/api/${meta.clazz?uncap_first}s/2\")\n	@ApiImplicitParams({ @ApiImplicitParam(name = \"${meta.clazz?uncap_first}Id\", value = \"${meta.domainLabel}ID\", required = true, dataType = \"String\") })\n	@GetMapping(\"/${meta.clazz?uncap_first}s/{${meta.clazz?uncap_first}Id}\")\n	@Transactional\n	public JsonResult detail(@RequestParam Map<String, String> map, @PathVariable String ${meta.clazz?uncap_first}Id) {\n		try {\n			${meta.clazz}  ${meta.clazz?uncap_first} = JpaUtil.getOne(${meta.clazz}.class, ${meta.clazz?uncap_first}Id);\n			return new JsonResult(ResultCode.SUCCESS, \"操作成功！\",  ${meta.clazz?uncap_first});\n		} catch (Exception e) {\n			return new JsonResult(ResultCode.EXCEPTION, \"操作失败！\", e.getMessage());\n		}\n	}\n\n	@ApiOperation(value = \"添加${meta.domainLabel}\", notes = \"http://localhost:8081/api/${meta.clazz?uncap_first}s\")\n	@PostMapping(\"/${meta.clazz?uncap_first}s\")\n	@Transactional\n	public JsonResult add(@RequestParam Map<String, String> map) {\n		try {\n			${meta.clazz}  ${meta.clazz?uncap_first} = (${meta.clazz}) MyBeanUtil.convertMap(${meta.clazz}.class, map);\n			 ${meta.clazz?uncap_first}.setCreateDate(new Date());\n			JpaUtil.persist( ${meta.clazz?uncap_first});\n			return new JsonResult(ResultCode.SUCCESS, \"操作成功！\", null);\n		} catch (Exception e) {\n			e.printStackTrace();\n			return new JsonResult(ResultCode.EXCEPTION, \"操作失败！\", e.getMessage());\n		}\n	}\n\n	@ApiOperation(value = \"修改${meta.domainLabel}\", notes = \"http://localhost:8081/api/${meta.clazz?uncap_first}s/1\")\n	@ApiImplicitParams({ @ApiImplicitParam(name = \"{${meta.clazz?uncap_first}Id\", value = \"${meta.domainLabel}ID\", required = true, dataType = \"String\") })\n	@PutMapping(\"/${meta.clazz?uncap_first}s/{${meta.clazz?uncap_first}Id}\")\n	@Transactional\n	public JsonResult update(@RequestParam Map<String, String> map, @PathVariable String ${meta.clazz?uncap_first}Id) {\n		try {\n			${meta.clazz}  ${meta.clazz?uncap_first} = (${meta.clazz}) MyBeanUtil.convertMap(${meta.clazz}.class, map);\n			${meta.clazz}  ${meta.clazz?uncap_first}Old = JpaUtil.getOne(${meta.clazz}.class, ${meta.clazz?uncap_first}Id);\n			MyBeanUtil.copyBizProperties( ${meta.clazz?uncap_first}Old,  ${meta.clazz?uncap_first});\n			 ${meta.clazz?uncap_first}.setUpdateDate(new Date());\n			JpaUtil.merge( ${meta.clazz?uncap_first}Old);\n			return new JsonResult(ResultCode.SUCCESS, \"操作成功！\", null);\n		} catch (Exception e) {\n			return new JsonResult(ResultCode.EXCEPTION, \"操作失败！\", e.getMessage());\n		}\n	}\n\n	@ApiOperation(value = \"删除${meta.domainLabel}\", notes = \"http://localhost:8081/api/${meta.clazz?uncap_first}s/1\")\n	@ApiImplicitParams({ @ApiImplicitParam(name = \"{${meta.clazz?uncap_first}Id\", value = \"${meta.domainLabel}ID\", required = true, dataType = \"String\") })\n	@DeleteMapping(\"/${meta.clazz?uncap_first}s/{${meta.clazz?uncap_first}Id}\")\n	@Transactional\n	public JsonResult delete(@RequestParam Map<String, String> map, @PathVariable String ${meta.clazz?uncap_first}Id) {\n		try {\n			${meta.clazz}  ${meta.clazz?uncap_first} = JpaUtil.getOne(${meta.clazz}.class, ${meta.clazz?uncap_first}Id);\n			JpaUtil.remove( ${meta.clazz?uncap_first});\n			return new JsonResult(ResultCode.SUCCESS, \"操作成功！\", null);\n		} catch (Exception e) {\n			return new JsonResult(ResultCode.EXCEPTION, \"操作失败！\", e.getMessage());\n		}\n	}\n\n}\n', ' \npackage com.${meta.company}.${meta.packagePrefix}.importer;\n\nimport java.io.IOException;\nimport java.util.ArrayList;\nimport java.util.Collection;\nimport java.util.Comparator;\nimport java.util.Date;\nimport java.util.HashMap;\nimport java.util.List;\nimport java.util.Map;\nimport java.util.TreeSet;\nimport java.util.stream.Collectors;\n\nimport org.apache.commons.collections.CollectionUtils;\nimport org.apache.commons.lang3.StringUtils;\nimport org.slf4j.Logger;\nimport org.springframework.beans.factory.annotation.Autowired;\nimport org.springframework.stereotype.Service;\nimport org.springframework.transaction.annotation.Transactional;\n\nimport com.bstek.bdf3.dorado.jpa.JpaUtil;\nimport com.bstek.bdf3.log.annotation.Log;\nimport com.bstek.bdf3.security.ContextUtils;\nimport com.bstek.dorado.uploader.UploadFile;\nimport com.bstek.dorado.uploader.annotation.FileResolver;\nimport com.${meta.company}.${meta.packagePrefix}.common.CommonService;\nimport com.${meta.company}.${meta.packagePrefix}.manage.EnumProvider;\nimport com.${meta.company}.${meta.packagePrefix}.utils.common.MyLog;\nimport com.${meta.company}.${meta.packagePrefix}.utils.excel.POIUtil;\nimport com.${meta.company}.${meta.packagePrefix}.entity.${meta.clazz};\n\nimport cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;\nimport cn.afterturn.easypoi.excel.entity.result.ExcelVerifyHandlerResult;\nimport cn.afterturn.easypoi.handler.impl.ExcelDataHandlerDefaultImpl;\nimport cn.afterturn.easypoi.handler.inter.IExcelVerifyHandler;\n\n\n@Service\npublic class ${meta.clazz}Importer  {\n  \n    @Autowired\n	EnumProvider enumProvider;\n    \n    @Autowired\n	CommonValidator commonValidator;\n    \n    @Autowired\n	CommonService commonService;\n    \n  private static Logger log = MyLog.get();\n                        \n    /**\n	 * 批量导入\n	 */\n	@FileResolver\n	@Transactional\n	@Log(module = \"${meta.domainLabel}\", category = \"导入\")\n	public Map<String, Object> process(UploadFile file, Map<String, Object> parameter) throws IOException { \n		Map<String, Object> result = new HashMap<>();\n		result.put(\"success\", true);\n		ExcelImportResult<${meta.clazz}> objImportResult ;\n		try {\n			//获取数据，判断存在错误记录\n			objImportResult = POIUtil.importExcel(file.getInputStream(), 0, 1, ${meta.clazz}.class,\n					null, null);\n		} catch (Exception e) {\n			log.info( \"EXCEL存在错误数据: {}\", e);\n			result.put(\"success\", false);\n			result.put(\"globleError\", \"EXCEL存在错误数据\");\n			return result;\n		}\n		/*\n        // 列表校验-存在重复记录\n		List<${meta.clazz}> objList = objImportResult.getList();\n		// 去重\n		List<${meta.clazz}> memoNotNullList = objList.stream()\n				//跳过水单号为空的记录\n				.filter(${meta.clazz?uncap_first}->StringUtils.isNotBlank(${meta.clazz?uncap_first}.getMemoCode()))\n				.collect(Collectors.toList());\n				\n				\n		List<${meta.clazz}> uniqueList = memoNotNullList.stream()\n				.collect(Collectors.collectingAndThen(\n						Collectors.toCollection(\n								() -> new TreeSet<>(Comparator.comparing(${meta.clazz}::getMemoCode))),\n						ArrayList::new));\n		// 取重复列表\n		Collection<${meta.clazz}> repeatList = CollectionUtils.subtract(memoNotNullList, uniqueList);\n		 \n		//重复数据收录 \n		List<String> repeatStrList=new ArrayList();\n		for (${meta.clazz} ${meta.clazz?uncap_first} : repeatList) {\n			repeatStrList.add(${meta.clazz?uncap_first}.getMemoCode());\n		}\n		//重复数据收录去重\n		repeatStrList=repeatStrList.stream().distinct().collect(Collectors.toList());*/\n         List<String> repeatList =null;\n		\n		//明细校验\n		 ${meta.clazz}ExcelDataHandler ${meta.clazz?uncap_first}ExcelDataHandler = new ${meta.clazz}ExcelDataHandler();\n		List<String> paras=new ArrayList();\n       <#list meta.importedList?chunk(1) as row> \n	<#list row as field>\n		<#if (field.fromEnum?exists&&field.fromEnum !=\'\')>\n		paras.add(\"${field.label}\");\n        </#if> \n	</#list>\n</#list> \n		String[] fileds = new String[paras.size()]; \n		paras.toArray(fileds);   \n		${meta.clazz?uncap_first}ExcelDataHandler.setNeedHandlerFields(fileds);\n        ExcelImportResult<${meta.clazz}> ${meta.clazz?uncap_first}ImportResult = POIUtil.importExcel(file.getInputStream(), 0, 1, ${meta.clazz}.class, new ${meta.clazz}ExcelVerifyHandler(repeatList), ${meta.clazz?uncap_first}ExcelDataHandler);     \n                                                                                            \n \n\n		// 明细校验失败\n		if (objImportResult.isVerfiyFail()) {\n			result.put(\"success\", false);\n			List<${meta.clazz}> objErrorList = objImportResult.getFailList();\n			result.put(\"objErrorList\", objErrorList);\n			return result;\n		}\n		// 校验通过 \n		for (${meta.clazz} obj : objImportResult.getList()) { \n			// 跳过空行\n			if (commonValidator.isBlankRow(obj)) {\n				continue;\n			}  \n			obj.setCreatedDate(new Date());\n			obj.setCreator(ContextUtils.getLoginUsername());\n			 JpaUtil.persist(obj);\n		}  \n\n		return result;\n	} \n\n    public class ${meta.clazz}ExcelDataHandler extends ExcelDataHandlerDefaultImpl<${meta.clazz}> {\n\n		@Override\n		public Object importHandler(${meta.clazz} obj, String name, Object value) {\n              <#list meta.importedList?chunk(1) as row> \n	<#list row as field>\n		<#if (field.fromEnum?exists&&field.fromEnum !=\'\')> \n        Map<String, String> ${field.name}Map = enumProvider.getVKs(\"${field.lookupName}\"); \n        </#if> \n	</#list>\n</#list>   \n			switch (name) {\n                <#list meta.importedList?chunk(1) as row> \n              <#list row as field>\n		<#if (field.fromEnum?exists&&field.fromEnum !=\'\')>\n        case \"${field.label}\":\n				value = ${field.name}Map.get(value);\n				break;\n        </#if> \n	</#list>\n</#list>   \n			 \n			default:\n				break;\n			}\n			return value;\n		}\n	}\n	\n	\n	// 明细校验\n	@Transactional\n	public class ${meta.clazz}ExcelVerifyHandler implements IExcelVerifyHandler<${meta.clazz}> {\n		List<String> repeatStrList;\n		  public ${meta.clazz}ExcelVerifyHandler(List<String> repeatStrList) {\n			super();\n			this.repeatStrList = repeatStrList;\n		}\n\n		@Override\n		public ExcelVerifyHandlerResult verifyHandler(${meta.clazz} obj) {\n			ExcelVerifyHandlerResult excelVerifyHandlerResult = new ExcelVerifyHandlerResult();\n			excelVerifyHandlerResult.setSuccess(true);\n			// 判断空行\n			if (commonValidator.isBlankRow(obj)) {\n				return excelVerifyHandlerResult;\n			} else { \n				StringBuilder msg = new StringBuilder();\n				\n						<#list meta.requiredList?chunk(1) as row> \n				<#list row as field>\n				<#if field.required?exists && field.required ==\'y\'>\n				if (\n					<#if field.dataType ==\"String\">\n		StringUtils.isBlank(obj.get${field.name?cap_first}())<#else>null==obj.get${field.name?cap_first}()</#if>) {\n						commonValidator.notify(msg, obj, \"${field.name}\", \"${field.label}不能为空!\"); \n				}\n		        </#if>\n		    	</#list>\n		    	</#list>\n		    	 \n				\n				if (StringUtils.isNoneBlank(msg)) {\n					excelVerifyHandlerResult.setSuccess(false);\n					excelVerifyHandlerResult.setMsg(msg.toString());\n					obj.setImportDetail(msg.toString());\n				}\n			}\n			return excelVerifyHandlerResult;\n		}\n\n	}\n \n	\n\n                                    \n} ', 'package com.${meta.company}.${meta.packagePrefix}.importer.vo;\n\nimport com.bstek.dorado.annotation.PropertyDef;\nimport cn.afterturn.easypoi.excel.annotation.Excel;\n\n/**\n * ${meta.domainLabel}\n */ \npublic class ${meta.clazz?cap_first}Vo {\n  \n                            \n<#list meta.importedList?chunk(1) as row> \n	<#list row as field>\n   \n	@Excel(name = \"${field.label}\", isImportField = \"true\")\n    @PropertyDef(label = \"${field.label}\") \n    private String ${field.name};\n		private String ${field.name}Tip; \n</#list>\n</#list>  \n  \n<#list meta.importedList?chunk(1) as row> \n	<#list row as field>\n                   \n		 	public String get${field.name?cap_first}() {\n		return ${field.name};\n	}\n\n	public void set${field.name?cap_first}(String ${field.name}) {\n		this.${field.name} = ${field.name};\n	}\n	\n	public String get${field.name?cap_first}Tip() {\n		return ${field.name}Tip;\n	}\n\n	public void set${field.name?cap_first}Tip(String ${field.name}) {\n		this.${field.name}Tip = ${field.name}Tip;\n	}\n	  \n</#list>\n</#list>  \n   \n}');

-- ----------------------------
-- Table structure for biz_domain
-- ----------------------------
DROP TABLE IF EXISTS `biz_domain`;
CREATE TABLE `biz_domain` (
  `ID` varchar(32) NOT NULL,
  `DOMAIN_SCHEMA_ID` varchar(255) DEFAULT NULL COMMENT '领域模型定义ID',
  `NAME` varchar(255) DEFAULT NULL COMMENT 'C属性名称',
  `DATA_TYPE` varchar(255) DEFAULT NULL COMMENT 'C类型',
  `LABEL` varchar(255) DEFAULT NULL COMMENT 'R标题/注释',
  `EXAMPLE` varchar(255) DEFAULT NULL COMMENT 'R举例数据',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT 'R数据说明',
  `SEARCH_CONDITION` varchar(255) DEFAULT NULL COMMENT 'R查询条件?',
  `SEARCH_RESULT` varchar(255) DEFAULT NULL COMMENT 'R查询结果?',
  `EDITABLE` varchar(255) DEFAULT NULL COMMENT 'R编辑展现?',
  `REQUIRED` varchar(255) DEFAULT NULL COMMENT 'R必填字段?',
  `EXPORT` varchar(255) DEFAULT NULL COMMENT 'R是否导出?',
  `FROM_ENUM` varchar(255) DEFAULT NULL COMMENT 'C枚举值',
  `FROM_TABLE` varchar(255) DEFAULT NULL COMMENT 'C关联表',
  `FORMAT` varchar(255) DEFAULT NULL COMMENT '特殊格式',
  `COLUMN_NAME` varchar(255) DEFAULT NULL COMMENT '表中列名',
  `LOOKUP_NAME` varchar(255) DEFAULT NULL COMMENT '枚举名称',
  `DB_ENTITY_NAME` varchar(255) DEFAULT NULL COMMENT '关联表相关实体',
  `DB_ENTITY_KEY` varchar(255) DEFAULT NULL COMMENT '关联表相关实体KEY',
  `DB_ENTITY_DISPLAY_VALUE` varchar(255) DEFAULT NULL COMMENT '关联表相关实体显示属性',
  `COLUMN_LENGTH` varchar(255) DEFAULT NULL COMMENT 'R表字段长度',
  `UNIQUE_VALUE` varchar(255) DEFAULT NULL COMMENT 'R联合唯一?',
  `EXT_TABLE_SAVE_ID` varchar(255) DEFAULT NULL COMMENT 'C关联表保存ID',
  `FIELD_ORDER` int(11) DEFAULT '0' COMMENT '排序',
  `COMMENT` varchar(255) DEFAULT NULL COMMENT '表注释',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '更新日期',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '更新人',
  `IMPORT_ENUM_STRING` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领域模型';

-- ----------------------------
-- Records of biz_domain
-- ----------------------------
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825b00000', '8f80b48d7304edd7017304ef42ba0000', 'appCode', 'String', '系统简称', null, null, 'y', 'y', 'y', '', '', '', '', null, 'APP_CODE', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825cc0001', '8f80b48d7304edd7017304ef42ba0000', 'type', 'String', '类型', null, null, '', 'y', 'y', '', '', 'GMPF_TYPE(1:是|0:否)', '', null, 'TYPE', 'GMPF_TYPE', null, null, null, null, null, null, '2', '\"是_1\",\"否_0\"', null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825ce0002', '8f80b48d7304edd7017304ef42ba0000', 'step', 'String', '阶段', null, null, '', 'y', 'y', '', '', 'GMPF_STEP(1:是|0:否)', '', null, 'STEP', 'GMPF_STEP', null, null, null, null, null, null, '3', '\"是_1\",\"否_0\"', null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825cf0003', '8f80b48d7304edd7017304ef42ba0000', 'tableName', 'String', '表名', null, null, 'y', 'y', 'y', '', '', '', '', null, 'TABLE_NAME', null, null, null, null, null, null, null, '4', null, null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825d10004', '8f80b48d7304edd7017304ef42ba0000', 'storeCode', 'String', '店铺编码', null, null, 'y', 'y', 'y', '', '', '', '', null, 'STORE_CODE', null, null, null, null, null, null, null, '5', null, null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825d40005', '8f80b48d7304edd7017304ef42ba0000', 'status', 'String', '迁移状态', null, null, '', 'y', 'y', '', '', 'GMPF_STATUS(1:是|0:否)', '', null, 'STATUS', 'GMPF_STATUS', null, null, null, null, null, null, '6', '\"是_1\",\"否_0\"', null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825d60006', '8f80b48d7304edd7017304ef42ba0000', 'sourceCount', 'Long', '查询记录条数', null, null, '', 'y', 'y', '', '', '', '', null, 'SOURCE_COUNT', null, null, null, null, null, null, null, '7', null, null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825d80007', '8f80b48d7304edd7017304ef42ba0000', 'resCount', 'Long', '同步记录条数', null, null, '', 'y', 'y', '', '', '', '', null, 'RES_COUNT', null, null, null, null, null, null, null, '8', null, null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825dc0008', '8f80b48d7304edd7017304ef42ba0000', 'createTime', 'Date', '创建时间', null, null, '', 'y', 'y', '', '', '', '', null, 'CREATE_TIME', null, null, null, null, null, null, null, '9', null, null, null, null, null, null);
INSERT INTO `biz_domain` VALUES ('8f80b48d73087bf40173089825fc0009', '8f80b48d7304edd7017304ef42ba0000', 'updateTime', 'Date', '更新时间', null, null, '', 'y', 'y', '', '', '', '', null, 'UPDATE_TIME', null, null, null, null, null, null, null, '10', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for biz_domain_schema_bdf3
-- ----------------------------
DROP TABLE IF EXISTS `biz_domain_schema_bdf3`;
CREATE TABLE `biz_domain_schema_bdf3` (
  `ID` varchar(32) NOT NULL,
  `PROJECT_ID` varchar(255) DEFAULT NULL COMMENT '项目ID',
  `DOMAIN_NAME` varchar(255) DEFAULT NULL COMMENT '模型英文名称',
  `DOMAIN_LABEL` varchar(255) DEFAULT NULL COMMENT '模型中文名称',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `INIT_SQL` text COMMENT '初始化SQL',
  `MENU_SQL` text COMMENT '菜单SQL',
  `GEN_ENTITY` text COMMENT 'genEntity',
  `GEN_SERVICE` text COMMENT 'genService',
  `GEN_CONTROLLER` text COMMENT 'genController',
  `GEN_WEB` text COMMENT 'genWeb',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '更新日期',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '更新人',
  `GEN_API` text,
  `GEN_IMPORTER` text,
  `GEN_IMPORTER_VO` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领域模型定义';

-- ----------------------------
-- Records of biz_domain_schema_bdf3
-- ----------------------------
INSERT INTO `biz_domain_schema_bdf3` VALUES ('8f80b48d7304edd7017304ef42ba0000', null, 'GalaxieMigrateProcessFeedback', '星河云迁移进度反馈', null, 'DROP TABLE IF EXISTS BIZ_GALAXIE_MIGRATE_PROCESS_FEEDBACK;\n\nCREATE TABLE BIZ_GALAXIE_MIGRATE_PROCESS_FEEDBACK (\n	ID_ VARCHAR(32) NOT NULL,\n	APP_CODE_ VARCHAR(255) COMMENT \'系统简称\',\n	TYPE_ VARCHAR(255) COMMENT \'类型\',\n	STEP_ VARCHAR(255) COMMENT \'阶段\',\n	TABLE_NAME_ VARCHAR(255) COMMENT \'表名\',\n	STORE_CODE_ VARCHAR(255) COMMENT \'店铺编码\',\n	STATUS_ VARCHAR(255) COMMENT \'迁移状态\',\n	SOURCE_COUNT_ BIGINT COMMENT \'查询记录条数\',\n	RES_COUNT_ BIGINT COMMENT \'同步记录条数\',\n	CREATE_TIME_ DATE COMMENT \'创建时间\',\n	UPDATE_TIME_ DATE COMMENT \'更新时间\',\n	CREATED_DATE_ DATETIME COMMENT \'创建日期\',\n	CREATOR_ VARCHAR(32) COMMENT \'创建人\',\n	UPDATE_DATE_ DATETIME COMMENT \'修改日期\',\n	MODIFIER_ VARCHAR(32) COMMENT \'修改人\',\n	PRIMARY KEY (ID_)\n) COMMENT = \'星河云迁移进度反馈\';', '/*星河云迁移进度反馈*/\nINSERT INTO BDF3_URL (DESCRIPTION_, NAME_, ICON_, PATH_, NAVIGABLE_, ORDER_, PARENT_ID_, ID_) VALUES(NULL,\'星河云迁移进度反馈\',\'fa fa-file-text blue-text\',\'com.mr.wwtg.view.GalaxieMigrateProcessFeedback.d\',1,20,NULL,REPLACE(UUID(),\'-\',\'\'));', 'package com.mr.wwtg.entity;\n\n\nimport java.util.Date;\n\nimport javax.persistence.Column;\nimport javax.persistence.Entity;\nimport javax.persistence.Id;\nimport javax.persistence.Table;\nimport javax.persistence.Temporal;\nimport javax.persistence.TemporalType;\nimport org.hibernate.annotations.Type;\n\nimport com.bstek.bdf3.dorado.jpa.annotation.Generator;\nimport com.bstek.bdf3.dorado.jpa.policy.impl.CreatedDatePolicy;\nimport com.bstek.bdf3.dorado.jpa.policy.impl.UpdatedDatePolicy;\nimport com.bstek.bdf3.security.ui.policy.CreatorPolicy;\nimport com.bstek.bdf3.security.ui.policy.ModifierPolicy;\nimport com.bstek.dorado.annotation.PropertyDef;\nimport com.mr.wwtg.policy.common.UuidPolicy;\n\n/**\n * 星河云迁移进度反馈\n */\n@Entity\n@Table(name = \"BIZ_GALAXIE_MIGRATE_PROCESS_FEEDBACK\")\npublic class GalaxieMigrateProcessFeedback {\n \n@Id\n	@Column(name = \"ID_\", length = 64)\n	@PropertyDef(label = \"ID\")\n	@Generator(policy = UuidPolicy.class)\n	private String id;\n\n	\n                            \n \n    @PropertyDef(label = \"系统简称\")\n         @Column(name = \"APP_CODE_\")\n		private String appCode;\n \n    @PropertyDef(label = \"类型\")\n         @Column(name = \"TYPE_\")\n		private String type;\n \n    @PropertyDef(label = \"阶段\")\n         @Column(name = \"STEP_\")\n		private String step;\n \n    @PropertyDef(label = \"表名\")\n         @Column(name = \"TABLE_NAME_\")\n		private String tableName;\n \n    @PropertyDef(label = \"店铺编码\")\n         @Column(name = \"STORE_CODE_\")\n		private String storeCode;\n \n    @PropertyDef(label = \"迁移状态\")\n         @Column(name = \"STATUS_\")\n		private String status;\n \n    @PropertyDef(label = \"查询记录条数\")\n          @Column(name = \"SOURCE_COUNT_\", length = 19)\n		private Long sourceCount; \n \n    @PropertyDef(label = \"同步记录条数\")\n          @Column(name = \"RES_COUNT_\", length = 19)\n		private Long resCount; \n \n    @PropertyDef(label = \"创建时间\")\n         @Temporal(TemporalType.TIMESTAMP)\n          @Column(name = \"CREATE_TIME_\")\n		private Date createTime; \n \n    @PropertyDef(label = \"更新时间\")\n         @Temporal(TemporalType.TIMESTAMP)\n          @Column(name = \"UPDATE_TIME_\")\n		private Date updateTime; \n\n @PropertyDef(label = \"创建日期\")\n	@Column(name = \"CREATED_DATE_\")\n	@Temporal(TemporalType.TIMESTAMP)\n	@Generator(policy = CreatedDatePolicy.class)\n	private Date createdDate;\n\n	@Column(name = \"CREATOR_\")\n	@PropertyDef(label = \"创建人\")\n	@Generator(policy = CreatorPolicy.class)\n	private String creator;\n\n	@Column(name = \"UPDATE_DATE_\")\n	@PropertyDef(label = \"修改日期\")\n	@Temporal(TemporalType.TIMESTAMP)\n	@Generator(policy = UpdatedDatePolicy.class)\n	private Date updateDate;\n\n	@Column(name = \"MODIFIER_\")\n	@PropertyDef(label = \"修改人\")\n	@Generator(policy = ModifierPolicy.class)\n	private String modifier;\n\n\n	public String getId() {\n		return id;\n	}\n\n	public void setId(String id) {\n		this.id = id;\n	}\n	\n	\n	\n		  \n          public String getAppCode() {\n		return appCode;\n	}\n\n	public void setAppCode(String appCode) {\n		this.appCode = appCode;\n	} \n		\n	  \n		  \n          public String getType() {\n		return type;\n	}\n\n	public void setType(String type) {\n		this.type = type;\n	} \n		\n	  \n		  \n          public String getStep() {\n		return step;\n	}\n\n	public void setStep(String step) {\n		this.step = step;\n	} \n		\n	  \n		  \n          public String getTableName() {\n		return tableName;\n	}\n\n	public void setTableName(String tableName) {\n		this.tableName = tableName;\n	} \n		\n	  \n		  \n          public String getStoreCode() {\n		return storeCode;\n	}\n\n	public void setStoreCode(String storeCode) {\n		this.storeCode = storeCode;\n	} \n		\n	  \n		  \n          public String getStatus() {\n		return status;\n	}\n\n	public void setStatus(String status) {\n		this.status = status;\n	} \n		\n	  \n		  \n          public Long getSourceCount() {\n		return sourceCount;\n	}\n\n	public void setSourceCount(Long sourceCount) {\n		this.sourceCount = sourceCount;\n	} \n		\n	  \n		  \n          public Long getResCount() {\n		return resCount;\n	}\n\n	public void setResCount(Long resCount) {\n		this.resCount = resCount;\n	} \n		\n	  \n		  \n          public Date getCreateTime() {\n		return createTime;\n	}\n\n	public void setCreateTime(Date createTime) {\n		this.createTime = createTime;\n	} \n		\n	  \n		  \n          public Date getUpdateTime() {\n		return updateTime;\n	}\n\n	public void setUpdateTime(Date updateTime) {\n		this.updateTime = updateTime;\n	} \n		\n	  \n \npublic Date getCreatedDate() {\n		return createdDate;\n	}\n\n	public void setCreatedDate(Date createdDate) {\n		this.createdDate = createdDate;\n	}\n\n	public String getCreator() {\n		return creator;\n	}\n\n	public void setCreator(String creator) {\n		this.creator = creator;\n	}\n\n	public Date getUpdateDate() {\n		return updateDate;\n	}\n\n	public void setUpdateDate(Date updateDate) {\n		this.updateDate = updateDate;\n	}\n\n	public String getModifier() {\n		return modifier;\n	}\n\n	public void setModifier(String modifier) {\n		this.modifier = modifier;\n	}\n	 \n	\n}', ' \npackage com.mr.wwtg.service;\n\nimport org.slf4j.Logger;\nimport org.springframework.stereotype.Service;\n\nimport com.mr.wwtg.utils.common.MyLog;\n\n@Service\npublic class GalaxieMigrateProcessFeedbackService  {\n  \n    \n    \n  private static Logger log = MyLog.get();\n             \n\n                                    \n} ', 'package com.mr.wwtg.controller;\nimport java.util.List;\nimport java.util.Map;\nimport org.slf4j.Logger;\nimport org.springframework.stereotype.Controller;\nimport org.springframework.transaction.annotation.Transactional;\nimport com.bstek.bdf3.dorado.jpa.JpaUtil;\nimport com.bstek.bdf3.log.annotation.Log;\nimport com.bstek.dorado.annotation.DataProvider;\nimport com.bstek.dorado.annotation.DataResolver;\nimport com.bstek.dorado.data.provider.Criteria;\nimport com.bstek.dorado.data.provider.Page;\nimport com.mr.wwtg.entity.*;\nimport com.mr.wwtg.manage.QueryFilter;\nimport com.mr.wwtg.utils.common.MyLog;\n@Controller\n@Transactional(readOnly = true)\npublic class GalaxieMigrateProcessFeedbackController extends QueryFilter {\nprivate static Logger log = MyLog.get();\n@DataResolver\n@Transactional\n@Log(module = \"星河云迁移进度反馈\", category = \"CRUD\")\npublic void save(List<GalaxieMigrateProcessFeedback> galaxieMigrateProcessFeedbacks) {\nJpaUtil.save(galaxieMigrateProcessFeedbacks);\n}\n@DataProvider\npublic void query(Page<GalaxieMigrateProcessFeedback> page, Map<String, Object> parameter) {\nCriteria criteria = new Criteria();\ncriteria = condition(criteria, parameter);\nJpaUtil.linq(GalaxieMigrateProcessFeedback.class).where(criteria).desc(\"updateDate\").paging(page);\n}\n}', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ViewConfig>\n<Arguments/>\n<Context/>\n<Model>\n<DataType name=\"GalaxieMigrateProcessFeedback\">\n<Property name=\"creationType\">com.mr.wwtg.entity.GalaxieMigrateProcessFeedback</Property>\n<PropertyDef name=\"id\">\n<Property name=\"dataType\">String</Property>\n</PropertyDef>\n<PropertyDef name=\"appCode\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">系统简称</Property>\n</PropertyDef>\n<PropertyDef name=\"type\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">类型</Property>\n<Property name=\"mapping\">\n<Property name=\"mapValues\">${dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;GMPF_TYPE&quot;)}</Property>\n</Property>\n</PropertyDef>\n<PropertyDef name=\"step\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">阶段</Property>\n<Property name=\"mapping\">\n<Property name=\"mapValues\">${dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;GMPF_STEP&quot;)}</Property>\n</Property>\n</PropertyDef>\n<PropertyDef name=\"tableName\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">表名</Property>\n</PropertyDef>\n<PropertyDef name=\"storeCode\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">店铺编码</Property>\n</PropertyDef>\n<PropertyDef name=\"status\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">迁移状态</Property>\n<Property name=\"mapping\">\n<Property name=\"mapValues\">${dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;GMPF_STATUS&quot;)}</Property>\n</Property>\n</PropertyDef>\n<PropertyDef name=\"sourceCount\">\n<Property name=\"dataType\">Long</Property>\n<Property name=\"label\">查询记录条数</Property>\n</PropertyDef>\n<PropertyDef name=\"resCount\">\n<Property name=\"dataType\">Long</Property>\n<Property name=\"label\">同步记录条数</Property>\n</PropertyDef>\n<PropertyDef name=\"createTime\">\n<Property name=\"dataType\">DateTime</Property>\n<Property name=\"label\">创建时间</Property>\n</PropertyDef>\n<PropertyDef name=\"updateTime\">\n<Property name=\"dataType\">DateTime</Property>\n<Property name=\"label\">更新时间</Property>\n</PropertyDef>\n<PropertyDef name=\"createdDate\">\n<Property/>\n<Property name=\"label\">创建日期</Property>\n<Property name=\"dataType\">DateTime</Property>\n</PropertyDef>\n<PropertyDef name=\"creator\">\n<Property/>\n<Property name=\"label\">创建人</Property>\n</PropertyDef>\n<PropertyDef name=\"updateDate\">\n<Property/>\n<Property name=\"label\">修改日期</Property>\n<Property name=\"dataType\">DateTime</Property>\n</PropertyDef>\n<PropertyDef name=\"modifier\">\n<Property/>\n<Property name=\"label\">修改人</Property>\n</PropertyDef>\n<PropertyDef name=\"importDetail\">\n<Property/>\n<Property name=\"label\">导入详情</Property>\n</PropertyDef>\n</DataType>\n<DataType name=\"Condition\">\n<PropertyDef name=\"appCode\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">系统简称</Property>\n</PropertyDef>\n<PropertyDef name=\"type_eq\">\n<Property name=\"mapping\">\n<Property name=\"mapValues\">${dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;GMPF_TYPE&quot;)}</Property>\n</Property>\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">类型</Property>\n</PropertyDef>\n<PropertyDef name=\"step_eq\">\n<Property name=\"mapping\">\n<Property name=\"mapValues\">${dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;GMPF_STEP&quot;)}</Property>\n</Property>\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">阶段</Property>\n</PropertyDef>\n<PropertyDef name=\"tableName\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">表名</Property>\n</PropertyDef>\n<PropertyDef name=\"storeCode\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">店铺编码</Property>\n</PropertyDef>\n<PropertyDef name=\"status_eq\">\n<Property name=\"mapping\">\n<Property name=\"mapValues\">${dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;GMPF_STATUS&quot;)}</Property>\n</Property>\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">迁移状态</Property>\n</PropertyDef>\n<PropertyDef name=\"sourceCount\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">查询记录条数</Property>\n</PropertyDef>\n<PropertyDef name=\"resCount\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">同步记录条数</Property>\n</PropertyDef>\n<PropertyDef name=\"createTime_startTime\">\n<Property name=\"dataType\">DateTime</Property>\n<Property name=\"label\">创建时间(起)</Property>\n</PropertyDef>\n<PropertyDef name=\"createTime_endTime\">\n<Property name=\"dataType\">DateTime</Property>\n<Property name=\"label\">创建时间(至)</Property>\n</PropertyDef>\n<PropertyDef name=\"createTime\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">创建时间</Property>\n</PropertyDef>\n<PropertyDef name=\"updateTime_startTime\">\n<Property name=\"dataType\">DateTime</Property>\n<Property name=\"label\">更新时间(起)</Property>\n</PropertyDef>\n<PropertyDef name=\"updateTime_endTime\">\n<Property name=\"dataType\">DateTime</Property>\n<Property name=\"label\">更新时间(至)</Property>\n</PropertyDef>\n<PropertyDef name=\"updateTime\">\n<Property name=\"dataType\">String</Property>\n<Property name=\"label\">更新时间</Property>\n</PropertyDef>\n</DataType>\n</Model>\n<View><Property name=\"packages\">font-awesome</Property>\n<Property name=\"title\">星河云迁移进度反馈信息维护</Property>\n<DataSet id=\"dsGalaxieMigrateProcessFeedback\">\n<Property name=\"dataProvider\">galaxieMigrateProcessFeedbackController#query</Property>\n<Property name=\"pageSize\">20</Property>\n<Property name=\"dataType\">[GalaxieMigrateProcessFeedback]</Property>\n<Property name=\"loadMode\">lazy</Property>\n</DataSet>\n<UpdateAction id=\"updateAction\">\n<Property name=\"successMessage\">操作成功!</Property>\n<Property name=\"executingMessage\">正在保存...</Property>\n<Property name=\"dataResolver\">galaxieMigrateProcessFeedbackController#save</Property>\n<UpdateItem>\n<Property name=\"dataSet\">dsGalaxieMigrateProcessFeedback</Property>\n</UpdateItem>\n</UpdateAction>\n<AutoForm id=\"formCondition\">\n<ClientEvent name=\"onKeyDown\">if (arg.keyCode === 13) {&#xD;\nwindow.clearTimeout(self.urlQueryTimeout);&#xD;\nself.urlQueryTimeout = window.setTimeout(function() {&#xD;\nvar data = view.get(&quot;#formCondition.entity&quot;);&#xD;\nwith (view.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;)) {&#xD;\nset(&quot;parameter&quot;, data);&#xD;\nflushAsync();&#xD;\n}&#xD;\n}, 250);&#xD;\n}</ClientEvent>\n<Property name=\"labelWidth\">100</Property>\n<Property name=\"cols\">*,*,*,*</Property>\n<Property name=\"createPrivateDataSet\">true</Property>\n<Property name=\"dataType\">Condition</Property>\n<Property name=\"labelAlign\">center</Property>\n<Property name=\"showHint\">false</Property>\n<AutoFormElement>\n<Property name=\"name\">appCode</Property>\n<Property name=\"label\">系统简称</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement>\n<Property name=\"name\">tableName</Property>\n<Property name=\"label\">表名</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement>\n<Property name=\"name\">storeCode</Property>\n<Property name=\"label\">店铺编码</Property>\n<Editor/>\n</AutoFormElement>\n</AutoForm>\n<ToolBar>\n<ToolBarButton>\n<ClientEvent name=\"onClick\">var data = view.get(&quot;#formCondition.entity&quot;);&#xD;\nwith (view.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;)){&#xD;\nset(&quot;parameter&quot;, data);&#xD;\nflushAsync();&#xD;\n}</ClientEvent>\n<Property name=\"caption\">查询</Property>\n<Property name=\"iconClass\">fa fa-search</Property>\n</ToolBarButton>\n<ToolBarButton>\n<ClientEvent name=\"onClick\">var datas = view.get(&quot;#dsGalaxieMigrateProcessFeedback.data&quot;);&#xD;\ndatas.insert();&#xD;\nview.get(&quot;#dialogGalaxieMigrateProcessFeedback&quot;).show();&#xD;\narg.processDefault=false;</ClientEvent>\n<Property name=\"caption\">新增</Property>\n<Property name=\"iconClass\">fa fa-plus</Property>\n</ToolBarButton>\n<ToolBarButton>\n<ClientEvent name=\"onClick\">var data=view.get(&quot;#dsGalaxieMigrateProcessFeedback.data&quot;);&#xD;\nif(data.current){&#xD;\nview.get(&quot;#dialogGalaxieMigrateProcessFeedback&quot;).show();&#xD;\n}else{&#xD;\ndorado.MessageBox.alert(&quot;当前表没有信息可供编辑!&quot;);&#xD;\n}</ClientEvent>\n<Property name=\"caption\">修改</Property>\n<Property name=\"iconClass\">fa fa-pencil-square-o</Property>\n</ToolBarButton>\n<ToolBarButton>\n<ClientEvent name=\"onClick\">var updateAction=view.get(&quot;#updateAction&quot;);&#xD;\nvar selection = view.get(&quot;#dgGalaxieMigrateProcessFeedback&quot;).get(&quot;selection&quot;);&#xD;\n&#xD;\nif(0 != selection.length) {&#xD;\ndorado.MessageBox.confirm(&quot;确认操作吗?&quot;,function(){&#xD;\n&#xD;\nfor (var i = 0; i &lt; selection.length; i++) {&#xD;\nvar select = selection[i];&#xD;\nselect.remove();&#xD;\n}&#xD;\n&#xD;\nupdateAction.execute();&#xD;\nview.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;).flushAsync(); &#xD;\n})&#xD;\n&#xD;\n} else {&#xD;\ndorado.MessageBox.alert(&quot;请选择需要操作的记录！&quot;);&#xD;\n}&#xD;\n&#xD;\n&#xD;\n</ClientEvent>\n<Property name=\"iconClass\">fa fa-trash-o</Property>\n<Property name=\"caption\">删除</Property>\n</ToolBarButton>\n<ToolBarButton>\n<ClientEvent name=\"onClick\">view.get(&quot;#autoUploadProgressBar&quot;).set(&quot;value&quot;, \'0\');\nview.get(&quot;#dialogImportInit&quot;).show();</ClientEvent>\n<Property name=\"caption\">导入</Property>\n<Property name=\"iconClass\">fa fa-cloud-upload</Property>\n</ToolBarButton>\n<ToolBarButton>\n<Property name=\"caption\">导出</Property>\n<Property name=\"iconClass\">fa fa-cloud-download</Property>\n<Property name=\"action\">exportAction</Property>\n</ToolBarButton>\n<Fill/>\n<DataPilot>\n<Property name=\"dataSet\">dsGalaxieMigrateProcessFeedback</Property>\n<Property name=\"itemCodes\">pages,pageSize</Property>\n</DataPilot>\n</ToolBar>\n<DataGrid id=\"dgGalaxieMigrateProcessFeedback\">\n<Property name=\"dataSet\">dsGalaxieMigrateProcessFeedback</Property>\n<Property name=\"dataType\">GalaxieMigrateProcessFeedback</Property>\n<Property name=\"selectionMode\">multiRows</Property>\n<Property name=\"readOnly\">true</Property>\n<RowSelectorColumn/>\n<RowNumColumn/>\n<DataColumn name=\"系统简称\">\n<Property name=\"caption\">系统简称</Property>\n<Property name=\"property\">appCode</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"类型\">\n<Property name=\"caption\">类型</Property>\n<Property name=\"property\">type</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"阶段\">\n<Property name=\"caption\">阶段</Property>\n<Property name=\"property\">step</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"表名\">\n<Property name=\"caption\">表名</Property>\n<Property name=\"property\">tableName</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"店铺编码\">\n<Property name=\"caption\">店铺编码</Property>\n<Property name=\"property\">storeCode</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"迁移状态\">\n<Property name=\"caption\">迁移状态</Property>\n<Property name=\"property\">status</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"查询记录条数\">\n<Property name=\"caption\">查询记录条数</Property>\n<Property name=\"property\">sourceCount</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"同步记录条数\">\n<Property name=\"caption\">同步记录条数</Property>\n<Property name=\"property\">resCount</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"创建时间\">\n<Property name=\"caption\">创建时间</Property>\n<Property name=\"property\">createTime</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n<DataColumn name=\"更新时间\">\n<Property name=\"caption\">更新时间</Property>\n<Property name=\"property\">updateTime</Property>\n<Property name=\"align\">center</Property>\n</DataColumn>\n</DataGrid>\n<Dialog id=\"dialogGalaxieMigrateProcessFeedback\">\n<ClientEvent name=\"onClose\">var data=view.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;).getData();&#xD;\ndata.cancel();&#xD;\n</ClientEvent>\n<Property name=\"center\">true</Property>\n<Property name=\"maximizeable\">true</Property>\n<Property name=\"width\">1024</Property>\n<Property name=\"height\">500</Property>\n<Property name=\"modal\">true</Property>\n<Property name=\"closeable\">true</Property>\n<Property name=\"caption\">详情</Property>\n<Buttons>\n<Button>\n<ClientEvent name=\"onClick\">var data=view.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;).getData();\nvar dialog=view.get(&quot;#dialogGalaxieMigrateProcessFeedback&quot;);\ndata.cancel();\ndialog.hide();</ClientEvent>\n<Property name=\"caption\">关闭</Property>\n<Property name=\"iconClass\">fa fa-arrow-circle-o-left</Property>\n<Property name=\"ui\">decline</Property>\n</Button>\n<Button>\n<ClientEvent name=\"onClick\">var dialog=view.get(&quot;#dialogGalaxieMigrateProcessFeedback&quot;);&#xD;\nvar action=view.get(&quot;#updateAction&quot;);&#xD;\ndorado.MessageBox.confirm(&quot;确认操作吗?&quot;,function(){&#xD;\naction.execute(function(){&#xD;\ndialog.hide();&#xD;\nview.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;).flushAsync(); &#xD;\n});&#xD;\n})</ClientEvent>\n<Property name=\"caption\">确定</Property>\n<Property name=\"iconClass\">fa fa-check-circle</Property>\n<Property name=\"ui\">highlight</Property>\n</Button>\n</Buttons>\n<Children>\n<AutoForm>\n<Property name=\"labelWidth\">100</Property>\n<Property name=\"dataSet\">dsGalaxieMigrateProcessFeedback</Property>\n<Property name=\"cols\">*,*</Property>\n<Property name=\"labelAlign\">center</Property>\n<Property name=\"showHint\">false</Property>\n<Property name=\"showHintMessage\">true</Property>\n<AutoFormElement name=\"appCode\">\n<Property name=\"name\">appCode</Property>\n<Property name=\"property\">appCode</Property>\n<Property name=\"label\">系统简称</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"type\">\n<Property name=\"name\">type</Property>\n<Property name=\"property\">type</Property>\n<Property name=\"label\">类型</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"step\">\n<Property name=\"name\">step</Property>\n<Property name=\"property\">step</Property>\n<Property name=\"label\">阶段</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"tableName\">\n<Property name=\"name\">tableName</Property>\n<Property name=\"property\">tableName</Property>\n<Property name=\"label\">表名</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"storeCode\">\n<Property name=\"name\">storeCode</Property>\n<Property name=\"property\">storeCode</Property>\n<Property name=\"label\">店铺编码</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"status\">\n<Property name=\"name\">status</Property>\n<Property name=\"property\">status</Property>\n<Property name=\"label\">迁移状态</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"sourceCount\">\n<Property name=\"name\">sourceCount</Property>\n<Property name=\"property\">sourceCount</Property>\n<Property name=\"label\">查询记录条数</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"resCount\">\n<Property name=\"name\">resCount</Property>\n<Property name=\"property\">resCount</Property>\n<Property name=\"label\">同步记录条数</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"createTime\">\n<Property name=\"name\">createTime</Property>\n<Property name=\"property\">createTime</Property>\n<Property name=\"label\">创建时间</Property>\n<Editor/>\n</AutoFormElement>\n<AutoFormElement name=\"updateTime\">\n<Property name=\"name\">updateTime</Property>\n<Property name=\"property\">updateTime</Property>\n<Property name=\"label\">更新时间</Property>\n<Editor/>\n</AutoFormElement>\n</AutoForm>\n</Children>\n<Tools/>\n</Dialog>\n<Dialog id=\"dialogImportInit\">\n<Property name=\"caption\">文件上传</Property>\n<Property name=\"modal\">true</Property>\n<Property name=\"autoAdjustPosition\">false</Property>\n<Property name=\"border\">curve</Property>\n<Property name=\"center\">true</Property>\n<Property name=\"resizeable\">false</Property>\n<Property name=\"shadowMode\">sides</Property>\n<Buttons>\n<Button layoutConstraint=\"bottom\">\n<Property name=\"action\">autoUploadAction</Property>\n<Property name=\"caption\">上传</Property>\n</Button>\n</Buttons>\n<Children>\n<AutoForm id=\"uploadForm\" layoutConstraint=\"top\">\n<Property name=\"labelWidth\">100</Property>\n<Property name=\"cols\">*</Property>\n<Property name=\"showHint\">false</Property>\n<Property name=\"createPrivateDataSet\">true</Property>\n<Link layoutConstraint=\"align:center\">\n<Property name=\"text\">下载导入模板</Property>\n<Property name=\"href\">http://dywxdz.oss-cn-shanghai.aliyuncs.com/excel/template/%E5%AD%A6%E7%94%9F%E5%AF%BC%E5%85%A5%E6%A8%A1%E6%9D%BF.xlsx</Property>\n</Link>\n</AutoForm>\n<UploadAction id=\"autoUploadAction\">\n<ClientEvent name=\"onUploadProgress\">view.get(&quot;#autoUploadProgressBar&quot;).set(&quot;value&quot;, arg.total.percent);\nvar prettySize = function(value) {\nvar _format = function(value, unit) {\nreturn (value.toFixed(1) + \' \' + unit).replace(\'.0\', \'\');\n};\nvar K = 1024;\nvar M = K * K;\nvar G = M * K;\nvar T = G * K;\nvar dividers = [ T, G, M, K, 1 ];\nvar units = [ \'TB\', \'GB\', \'MB\', \'KB\', \'B\' ];\nif (value == 0) {\nreturn \'0B\';\n} else if (value &lt; 0) {\nreturn \'Invalid size\';\n}\nvar result = \'\';\nvar temp = 0;\nfor ( var i = 0; i &lt; dividers.length; i++) {\nvar divider = dividers[i];\nif (value >= divider) {\ntemp = value / divider;\nif (temp &lt; 1.05) {\nresult = _format(value,\nunits[((i + 1) &lt; units.length) ? (i + 1) : i]);\n} else {\nresult = _format(temp, units[i]);\n}\nbreak;\n}\n}\nreturn result;\n};</ClientEvent>\n<ClientEvent name=\"onFileUploaded\">view.get(&quot;#dialogImportInit&quot;).close();\nif(arg.returnValue.success){\ndorado.widget.NotifyTipManager.notify(&quot;导入成功!&quot;);\n}else{\nview.get(&quot;#dsGalaxieMigrateProcessFeedbackFail&quot;).setData(arg.returnValue.galaxieMigrateProcessFeedbackErrorList);\nview.get(&quot;#dialogGalaxieMigrateProcessFeedbackFail&quot;).show();\n}\nview.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;).flushAsync();\n</ClientEvent>\n<Property name=\"maxFileSize\">100MB</Property>\n<Property name=\"fileResolver\">galaxieMigrateProcessFeedbackService#process</Property>\n<Property name=\"autoUpload\">true</Property>\n<Filters>\n<Filter>\n<Property name=\"title\">Excel files</Property>\n<Property name=\"extensions\">xls,xlsx</Property>\n</Filter>\n</Filters>\n</UploadAction>\n<ProgressBar id=\"autoUploadProgressBar\" layoutConstraint=\"type:top;top:50%;left:10;right:10\">\n<Property name=\"textPattern\">{percent}%</Property>\n</ProgressBar>\n</Children>\n<Tools/>\n</Dialog>\n<Dialog id=\"dialogGalaxieMigrateProcessFeedbackFail\">\n<ClientEvent name=\"onClose\">var data=view.get(&quot;#dsGalaxieMigrateProcessFeedback&quot;).getData();\ndata.cancel();\n</ClientEvent>\n<Property name=\"center\">true</Property>\n<Property name=\"maximizeable\">true</Property>\n<Property name=\"modal\">true</Property>\n<Property name=\"closeable\">true</Property>\n<Property name=\"caption\">失败数据</Property>\n<Property name=\"width\">800</Property>\n<Property name=\"height\">400</Property>\n<Property name=\"maximized\">true</Property>\n<Buttons>\n<Button>\n<ClientEvent name=\"onClick\">var data=view.get(&quot;#dsGalaxieMigrateProcessFeedbackFail&quot;).getData();\nvar dialog=view.get(&quot;#dialogGalaxieMigrateProcessFeedbackFail&quot;);\ndata.cancel();\ndialog.hide(); </ClientEvent>\n<Property name=\"caption\">关闭</Property>\n<Property name=\"iconClass\">fa fa-share</Property>\n</Button>\n</Buttons>\n<Children>\n<DataSet id=\"dsGalaxieMigrateProcessFeedbackFail\">\n<Property name=\"dataType\">[GalaxieMigrateProcessFeedback]</Property>\n</DataSet>\n<Tip>\n<Property name=\"caption\">导入时存在失败数据，请根据提示信息修改并重新导入</Property>\n<Property name=\"floating\">false</Property>\n</Tip>\n<DataGrid>\n<Property name=\"dataSet\">dsGalaxieMigrateProcessFeedbackFail</Property>\n<Property name=\"highlightCurrentRow\">false</Property>\n<Property name=\"highlightHoverRow\">false</Property>\n<Property name=\"highlightSelectedRow\">false</Property>\n<Property name=\"readOnly\">true</Property>\n<RowNumColumn/>\n<ColumnGroup>\n<Property name=\"caption\">导入数据</Property>\n</ColumnGroup>\n<DataColumn>\n<Property name=\"property\">importDetail</Property>\n<Property name=\"caption\">导入详情</Property>\n</DataColumn>\n<IndicatorColumn/>\n</DataGrid>\n<Tip id=\"tip\"/>\n<Export2ReportAction id=\"eaFail\">\n<Property name=\"template\">dgImportFail</Property>\n<Property name=\"dataScope\">currentPage</Property>\n<Property name=\"executingMessage\">正在导出……</Property>\n<Property name=\"successMessage\">数据导出成功。</Property>\n<Property name=\"extension\">xlsx</Property>\n<Property name=\"maxSize\">10000</Property>\n<Property name=\"fileName\">订单导入报错详情</Property>\n</Export2ReportAction>\n</Children>\n<Tools/>\n</Dialog>\n<Export2ReportAction id=\"exportAction\">\n<Property name=\"template\">dgGalaxieMigrateProcessFeedback</Property>\n<Property name=\"dataScope\">serverAll</Property>\n<Property name=\"executingMessage\">正在导出……</Property>\n<Property name=\"successMessage\">数据导出成功。</Property>\n<Property name=\"extension\">xlsx</Property>\n<Property name=\"maxSize\">10000</Property>\n<Property name=\"fileName\">星河云迁移进度反馈</Property>\n</Export2ReportAction>\n</View>\n</ViewConfig>', null, null, null, null, null, ' \npackage com.mr.wwtg.importer;\n\nimport java.io.IOException;\nimport java.util.ArrayList;\nimport java.util.Collection;\nimport java.util.Comparator;\nimport java.util.Date;\nimport java.util.HashMap;\nimport java.util.List;\nimport java.util.Map;\nimport java.util.TreeSet;\nimport java.util.stream.Collectors;\n\nimport org.apache.commons.collections.CollectionUtils;\nimport org.apache.commons.lang3.StringUtils;\nimport org.slf4j.Logger;\nimport org.springframework.beans.factory.annotation.Autowired;\nimport org.springframework.stereotype.Service;\nimport org.springframework.transaction.annotation.Transactional;\n\nimport com.bstek.bdf3.dorado.jpa.JpaUtil;\nimport com.bstek.bdf3.log.annotation.Log;\nimport com.bstek.bdf3.security.ContextUtils;\nimport com.bstek.dorado.uploader.UploadFile;\nimport com.bstek.dorado.uploader.annotation.FileResolver;\nimport com.mr.wwtg.common.CommonService;\nimport com.mr.wwtg.manage.EnumProvider;\nimport com.mr.wwtg.utils.common.MyLog;\nimport com.mr.wwtg.utils.excel.POIUtil;\nimport com.mr.wwtg.entity.GalaxieMigrateProcessFeedback;\n\nimport cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;\nimport cn.afterturn.easypoi.excel.entity.result.ExcelVerifyHandlerResult;\nimport cn.afterturn.easypoi.handler.impl.ExcelDataHandlerDefaultImpl;\nimport cn.afterturn.easypoi.handler.inter.IExcelVerifyHandler;\n\n\n@Service\npublic class GalaxieMigrateProcessFeedbackImporter  {\n  \n    @Autowired\n	EnumProvider enumProvider;\n    \n    @Autowired\n	CommonValidator commonValidator;\n    \n    @Autowired\n	CommonService commonService;\n    \n  private static Logger log = MyLog.get();\n                        \n    /**\n	 * 批量导入\n	 */\n	@FileResolver\n	@Transactional\n	@Log(module = \"星河云迁移进度反馈\", category = \"导入\")\n	public Map<String, Object> process(UploadFile file, Map<String, Object> parameter) throws IOException { \n		Map<String, Object> result = new HashMap<>();\n		result.put(\"success\", true);\n		ExcelImportResult<GalaxieMigrateProcessFeedback> objImportResult ;\n		try {\n			//获取数据，判断存在错误记录\n			objImportResult = POIUtil.importExcel(file.getInputStream(), 0, 1, GalaxieMigrateProcessFeedback.class,\n					null, null);\n		} catch (Exception e) {\n			log.info( \"EXCEL存在错误数据: {}\", e);\n			result.put(\"success\", false);\n			result.put(\"globleError\", \"EXCEL存在错误数据\");\n			return result;\n		}\n		/*\n        // 列表校验-存在重复记录\n		List<GalaxieMigrateProcessFeedback> objList = objImportResult.getList();\n		// 去重\n		List<GalaxieMigrateProcessFeedback> memoNotNullList = objList.stream()\n				//跳过水单号为空的记录\n				.filter(galaxieMigrateProcessFeedback->StringUtils.isNotBlank(galaxieMigrateProcessFeedback.getMemoCode()))\n				.collect(Collectors.toList());\n				\n				\n		List<GalaxieMigrateProcessFeedback> uniqueList = memoNotNullList.stream()\n				.collect(Collectors.collectingAndThen(\n						Collectors.toCollection(\n								() -> new TreeSet<>(Comparator.comparing(GalaxieMigrateProcessFeedback::getMemoCode))),\n						ArrayList::new));\n		// 取重复列表\n		Collection<GalaxieMigrateProcessFeedback> repeatList = CollectionUtils.subtract(memoNotNullList, uniqueList);\n		 \n		//重复数据收录 \n		List<String> repeatStrList=new ArrayList();\n		for (GalaxieMigrateProcessFeedback galaxieMigrateProcessFeedback : repeatList) {\n			repeatStrList.add(galaxieMigrateProcessFeedback.getMemoCode());\n		}\n		//重复数据收录去重\n		repeatStrList=repeatStrList.stream().distinct().collect(Collectors.toList());*/\n         List<String> repeatList =null;\n		\n		//明细校验\n		 GalaxieMigrateProcessFeedbackExcelDataHandler galaxieMigrateProcessFeedbackExcelDataHandler = new GalaxieMigrateProcessFeedbackExcelDataHandler();\n		List<String> paras=new ArrayList();\n		String[] fileds = new String[paras.size()]; \n		paras.toArray(fileds);   \n		galaxieMigrateProcessFeedbackExcelDataHandler.setNeedHandlerFields(fileds);\n        ExcelImportResult<GalaxieMigrateProcessFeedback> galaxieMigrateProcessFeedbackImportResult = POIUtil.importExcel(file.getInputStream(), 0, 1, GalaxieMigrateProcessFeedback.class, new GalaxieMigrateProcessFeedbackExcelVerifyHandler(repeatList), galaxieMigrateProcessFeedbackExcelDataHandler);     \n                                                                                            \n \n\n		// 明细校验失败\n		if (objImportResult.isVerfiyFail()) {\n			result.put(\"success\", false);\n			List<GalaxieMigrateProcessFeedback> objErrorList = objImportResult.getFailList();\n			result.put(\"objErrorList\", objErrorList);\n			return result;\n		}\n		// 校验通过 \n		for (GalaxieMigrateProcessFeedback obj : objImportResult.getList()) { \n			// 跳过空行\n			if (commonValidator.isBlankRow(obj)) {\n				continue;\n			}  \n			obj.setCreatedDate(new Date());\n			obj.setCreator(ContextUtils.getLoginUsername());\n			 JpaUtil.persist(obj);\n		}  \n\n		return result;\n	} \n\n    public class GalaxieMigrateProcessFeedbackExcelDataHandler extends ExcelDataHandlerDefaultImpl<GalaxieMigrateProcessFeedback> {\n\n		@Override\n		public Object importHandler(GalaxieMigrateProcessFeedback obj, String name, Object value) {\n			switch (name) {\n			 \n			default:\n				break;\n			}\n			return value;\n		}\n	}\n	\n	\n	// 明细校验\n	@Transactional\n	public class GalaxieMigrateProcessFeedbackExcelVerifyHandler implements IExcelVerifyHandler<GalaxieMigrateProcessFeedback> {\n		List<String> repeatStrList;\n		  public GalaxieMigrateProcessFeedbackExcelVerifyHandler(List<String> repeatStrList) {\n			super();\n			this.repeatStrList = repeatStrList;\n		}\n\n		@Override\n		public ExcelVerifyHandlerResult verifyHandler(GalaxieMigrateProcessFeedback obj) {\n			ExcelVerifyHandlerResult excelVerifyHandlerResult = new ExcelVerifyHandlerResult();\n			excelVerifyHandlerResult.setSuccess(true);\n			// 判断空行\n			if (commonValidator.isBlankRow(obj)) {\n				return excelVerifyHandlerResult;\n			} else { \n				StringBuilder msg = new StringBuilder();\n				\n		    	 \n				\n				if (StringUtils.isNoneBlank(msg)) {\n					excelVerifyHandlerResult.setSuccess(false);\n					excelVerifyHandlerResult.setMsg(msg.toString());\n					obj.setImportDetail(msg.toString());\n				}\n			}\n			return excelVerifyHandlerResult;\n		}\n\n	}\n \n	\n\n                                    \n} ', 'package com.mr.wwtg.importer.vo;\n\nimport com.bstek.dorado.annotation.PropertyDef;\nimport cn.afterturn.easypoi.excel.annotation.Excel;\n\n/**\n * 星河云迁移进度反馈\n */ \npublic class GalaxieMigrateProcessFeedbackVo {\n  \n                            \n  \n   \n}');
