-- --
-- -- 转存表中的数据 `act_ge_property`
-- --
--
-- INSERT INTO `act_ge_property` (`NAME_`, `VALUE_`, `REV_`) VALUES
-- ('next.dbid', '1', 1),
-- ('schema.history', 'create(5.17.0.2)', 1),
-- ('schema.version', '5.17.0.2', 1);

SET foreign_key_checks = 0;
--
-- 转存表中的数据 `tbl_project`
--

INSERT INTO `TBL_PROJECT` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `actual_duration`, `comment`, `completed`, `director_id`, `expected_duration`, `location`, `project_name`, `start_time`, `name`) VALUES
('0', NULL, NULL, '0', NULL, '0', NULL, 'TEST', '0', NULL, 29, '上海', '项目0', '2016-05-28', NULL),
('1', '17:39:50', '0', '1', NULL, '0', NULL, '测试数据', '1', NULL, 25, '上海', '项目1', '2015-04-23', NULL),
('10', NULL, NULL, '10', NULL, '0', NULL, '测试数据', '1', NULL, 24, '广州', '项目10', '2015-04-05', NULL),
('11', NULL, NULL, '11', NULL, '0', NULL, '测试数据', '1', NULL, 25, '广州', '项目11', '2015-10-14', NULL),
('12', NULL, NULL, '12', NULL, '0', NULL, '测试数据', '1', NULL, 33, '上海', '项目12', '2015-02-22', NULL),
('13', NULL, NULL, '13', NULL, '0', NULL, '测试数据', '1', NULL, 25, '上海', '项目13', '2016-05-03', NULL),
('14', NULL, NULL, '14', NULL, '0', NULL, '测试数据', '1', NULL, 27, '沈阳', '项目14', '2016-12-18', NULL),
('2', NULL, NULL, '2', NULL, '0', NULL, '测试数据', '1', NULL, 27, '北京', '项目2', '2015-03-18', NULL),
('3', NULL, NULL, '3', NULL, '0', NULL, '测试数据', '1', NULL, 30, '沈阳', '项目3', '2016-10-01', NULL),
('4', NULL, NULL, '4', NULL, '0', NULL, '测试数据', '1', NULL, 30, '北京', '项目4', '2016-09-13', NULL),
('5', NULL, NULL, '5', NULL, '0', NULL, '测试数据', '1', NULL, 26, '深圳', '项目5', '2016-12-25', NULL),
('6', NULL, NULL, '6', NULL, '0', NULL, '测试数据', '1', NULL, 27, '沈阳', '项目6', '2016-08-01', NULL),
('7', NULL, NULL, '7', NULL, '0', NULL, '测试数据', '0', NULL, 33, '北京', '项目7', '2016-08-11', NULL),
('8', NULL, NULL, '8', NULL, '0', NULL, '测试数据', '0', NULL, 31, '沈阳', '项目8', '2015-10-28', NULL),
('9', NULL, NULL, '9', NULL, '0', NULL, '测试数据', '0', NULL, 25, '上海', '项目9', '2015-05-06', NULL) ON DUPLICATE KEY UPDATE id = id;

-- --------------------------------------------------------
--
-- 转存表中的数据 `tbl_milestone`
--

INSERT INTO `TBL_MILESTONE` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `milestone_name`, `project_id`, `milestone_time`, `status`, `name`) VALUES
('0-0', NULL, NULL, NULL, NULL, '0', '测试节点0-0', NULL, '2016-07-01', NULL, NULL),
('0-1', NULL, NULL, NULL, NULL, '0', '测试节点0-1', NULL, '2016-08-13', NULL, NULL),
('0-2', NULL, NULL, NULL, NULL, '0', '测试节点0-2', NULL, '2016-11-01', NULL, NULL),
('0-3', NULL, NULL, NULL, NULL, '0', '测试节点0-3', NULL, '2016-12-06', NULL, NULL),
('0-4', NULL, NULL, NULL, NULL, '0', '测试节点0-4', NULL, '2017-03-05', NULL, NULL),
('1-0', NULL, NULL, NULL, NULL, '0', '测试节点1-0', NULL, '2015-05-09', NULL, NULL),
('1-1', NULL, NULL, NULL, NULL, '0', '测试节点1-1', NULL, '2015-08-09', NULL, NULL),
('10-0', NULL, NULL, NULL, NULL, '0', '测试节点10-0', '5', '2017-02-05', NULL, NULL),
('10-1', NULL, NULL, NULL, NULL, '0', '测试节点10-1', '5', '2017-03-19', NULL, NULL),
('10-2', NULL, NULL, NULL, NULL, '0', '测试节点10-2', '5', '2017-06-17', NULL, NULL),
('10-3', NULL, NULL, NULL, NULL, '0', '测试节点10-3', '5', '2017-08-20', NULL, NULL),
('11-0', NULL, NULL, NULL, NULL, '0', '测试节点11-0', '6', '2016-09-05', NULL, NULL),
('12-0', NULL, NULL, NULL, NULL, '0', '测试节点12-0', '7', '2016-08-16', NULL, NULL),
('13-0', NULL, NULL, NULL, NULL, '0', '测试节点13-0', '8', '2015-11-01', NULL, NULL),
('13-1', NULL, NULL, NULL, NULL, '0', '测试节点13-1', '8', '2016-01-30', NULL, NULL),
('13-2', NULL, NULL, NULL, NULL, '0', '测试节点13-2', '8', '2016-03-21', NULL, NULL),
('13-3', NULL, NULL, NULL, NULL, '0', '测试节点13-3', '8', '2016-06-20', NULL, NULL),
('14-0', NULL, NULL, NULL, NULL, '0', '测试节点14-0', '9', '2015-05-07', NULL, NULL),
('2-0', NULL, NULL, NULL, NULL, '0', '测试节点2-0', '10', '2015-04-23', NULL, NULL),
('3-0', NULL, NULL, NULL, NULL, '0', '测试节点3-0', '11', '2015-10-30', NULL, NULL),
('3-1', NULL, NULL, NULL, NULL, '0', '测试节点3-1', '11', '2015-12-27', NULL, NULL),
('3-2', NULL, NULL, NULL, NULL, '0', '测试节点3-2', '11', '2016-02-23', NULL, NULL),
('3-3', NULL, NULL, NULL, NULL, '0', '测试节点3-3', '11', '2016-05-03', NULL, NULL),
('3-4', NULL, NULL, NULL, NULL, '0', '测试节点3-4', '11', '2016-08-01', NULL, NULL),
('4-0', NULL, NULL, NULL, NULL, '0', '测试节点4-0', '12', '2015-04-07', NULL, NULL),
('5-0', NULL, NULL, NULL, NULL, '0', '测试节点5-0', '13', '2016-05-12', NULL, NULL),
('6-0', NULL, NULL, NULL, NULL, '0', '测试节点6-0', '14', '2016-12-23', NULL, NULL),
('6-1', NULL, NULL, NULL, NULL, '0', '测试节点6-1', '14', '2017-03-11', NULL, NULL),
('7-0', NULL, NULL, NULL, NULL, '0', '测试节点7-0', '2', '2015-05-01', NULL, NULL),
('7-1', NULL, NULL, NULL, NULL, '0', '测试节点7-1', '2', '2015-06-22', NULL, NULL),
('7-2', NULL, NULL, NULL, NULL, '0', '测试节点7-2', '2', '2015-08-18', NULL, NULL),
('8-0', NULL, NULL, NULL, NULL, '0', '测试节点8-0', '3', '2016-11-19', NULL, NULL),
('9-0', NULL, NULL, NULL, NULL, '0', '测试节点9-0', '4', '2016-10-26', NULL, NULL),
('9-1', NULL, NULL, NULL, NULL, '0', '测试节点9-1', '4', '2016-12-14', NULL, NULL),
('9-2', NULL, NULL, NULL, NULL, '0', '测试节点9-2', '4', '2017-01-27', NULL, NULL),
('93a0ada7-facf-4476-af21-1bff96de4011', NULL, NULL, NULL, '2017-07-10 16:24:32', '0', 'TEST1', '1', '2017-07-02T08:24:29.282Z', NULL, NULL),
('f988c509-5b74-463b-ae42-c53204c78689', NULL, NULL, NULL, '2017-07-10 16:24:22', '0', 'TEST0', '1', '2016-07-07T08:24:16.858Z', NULL, NULL) ON DUPLICATE KEY UPDATE id = id;

-- --------------------------------------------------------


--
-- 转存表中的数据 `tbl_standard`
--

INSERT INTO `TBL_STANDARD` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `name`, `issue_date`, `status`, `summary`, `type`) VALUES
('0', NULL, NULL, '0', NULL, '0', '测试数据0', '2015-12-17', '1', NULL, '2'),
('1', NULL, NULL, '1', NULL, '0', '测试数据1', '2014-10-12', '1', NULL, '2'),
('10', NULL, NULL, '10', NULL, '0', '测试数据10', '2014-12-10', '0', NULL, '0'),
('11', NULL, NULL, '11', NULL, '0', '测试数据11', '2012-04-13', '1', NULL, '0'),
('12', NULL, NULL, '12', NULL, '0', '测试数据12', '2013-07-23', '0', NULL, '2'),
('13', NULL, NULL, '13', NULL, '0', '测试数据13', '2013-03-02', '1', NULL, '0'),
('14', NULL, NULL, '14', NULL, '0', '测试数据14', '2016-08-03', '1', NULL, '2'),
('2', NULL, NULL, '2', NULL, '0', '测试数据2', '2016-01-01', '0', NULL, '0'),
('3', NULL, NULL, '3', NULL, '0', '测试数据3', '2014-05-25', '0', NULL, '2'),
('4', NULL, NULL, '4', NULL, '0', '测试数据4', '2016-11-16', '1', NULL, '1'),
('5', NULL, NULL, '5', NULL, '0', '测试数据5', '2016-11-07', '1', NULL, '2'),
('6', NULL, NULL, '6', NULL, '0', '测试数据6', '2012-11-05', '1', NULL, '1'),
('7', NULL, NULL, '7', NULL, '0', '测试数据7', '2015-02-14', '1', NULL, '0'),
('8', NULL, NULL, '8', NULL, '0', '测试数据8', '2015-11-19', '1', NULL, '0'),
('9', NULL, NULL, '9', NULL, '0', '测试数据9', '2013-03-05', '1', NULL, '2') ON DUPLICATE KEY UPDATE id = id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_delete_authorization`
--

INSERT INTO `TBL_SYS_DELETE_AUTHORIZATION` (`organization_id`, `role_id`) VALUES
('0', '0'),
('0-0', '0'),
('0-1', '0'),
('0-2', '0'),
('0-2-0', '0'),
('0-2-1', '0'),
('0-2-2', '0'),
('0-2-4', '0'),
('0-2-5', '0'),
('0-3', '0'),
('0-3-0', '0'),
('0-3-1', '0'),
('0-3-2', '0'),
('0-3-3', '0'),
('0-4', '0'),
('0-5', '0') ON DUPLICATE KEY UPDATE organization_id = organization_id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_edit_authorization`
--

INSERT INTO `TBL_SYS_EDIT_AUTHORIZATION` (`organization_id`, `role_id`) VALUES
('0', '0'),
('0-0', '0'),
('0-1', '0'),
('0-2', '0'),
('0-2-0', '0'),
('0-2-1', '0'),
('0-2-2', '0'),
('0-2-4', '0'),
('0-2-5', '0'),
('0-3', '0'),
('0-3-0', '0'),
('0-3-1', '0'),
('0-3-2', '0'),
('0-3-3', '0'),
('0-4', '0'),
('0-5', '0') ON DUPLICATE KEY UPDATE organization_id = organization_id;

-- --------------------------------------------------------
--
-- 转存表中的数据 `tbl_sys_menu`
--

INSERT INTO `TBL_SYS_MENU` (`ID`, `CODE`, `MENU_PATH`, `MENU_ICON`, `MODULE_ID`, `PARENT_ID`, `altered_time`, `altered_user_id`, `created_time`, `created_user_id`, `name`) VALUES
('0-0', '0-0', '/user_list', 'idcard', '0', NULL, NULL, NULL, NULL, NULL, '用户管理'),
('0-1', '0-1', '/organization_tree', 'usb', '0', NULL, NULL, NULL, NULL, NULL, '组织管理'),
('0-2', '0-2', '/role_list', 'key', '0', NULL, NULL, NULL, NULL, NULL, '角色管理'),
('1-0', '1-0', '/project_list', 'database', '1', NULL, NULL, NULL, NULL, NULL, '项目信息'),
('1-1', '1-1', NULL, 'laptop', '1', NULL, NULL, NULL, NULL, NULL, '项目日志'),
('1-1-0', '1-1-0', '/personnel_journals', 'tag-o', NULL, '1-1', NULL, NULL, NULL, NULL, '个人日志信息'),
('1-1-1', '1-1-1', '/journal_list', 'tags', NULL, '1-1', NULL, NULL, NULL, NULL, '项目日志信息'),
('1-1-2', '1-1-2', '/journal_statistics', 'line-chart', NULL, '1-1', NULL, NULL, NULL, NULL, '日志信息统计'),
('2-0', '2-0', '/personnel_list', 'solution', '2', NULL, NULL, NULL, NULL, NULL, '员工信息'),
('3-0', '3-0', '/contract_list', 'red-envelope', '3', NULL, NULL, NULL, NULL, NULL, '合同信息'),
('3-1', '3-1', '/customer_list', 'contacts', '3', NULL, NULL, NULL, NULL, NULL, '客户信息'),
('4-0', '4-0', '/standard_list', 'book', '4', NULL, NULL, NULL, NULL, NULL, '国家标准规范'),
('5-0', '5-0', '/index_list', 'book', '5', NULL, NULL, NULL, NULL, NULL, '指标定义') ON DUPLICATE KEY UPDATE ID = ID;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_function`
--

INSERT INTO `TBL_SYS_FUNCTION` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `function_code`, `menu_id`, `name`, `function_path`, `function_string`) VALUES
('0-0-F0', NULL, NULL, '0-0-F0', NULL, NULL, '0-0-F0', '0-0', '新增用户', '/addUser', 'addUser'),
('0-0-F1', NULL, NULL, '0-0-F1', NULL, NULL, '0-0-F1', '0-0', '修改用户', '/editUser', 'editUser'),
('0-0-F2', NULL, NULL, '0-0-F2', NULL, NULL, '0-0-F2', '0-0', '删除用户', '/deleteUser', 'deleteUser'),
('0-0-F3', NULL, NULL, '0-0-F3', NULL, NULL, '0-0-F3', '0-0', '查询用户', '/queryUsers', 'queryUsers'),
('0-1-F0', NULL, NULL, '0-1-F0', NULL, NULL, '0-1-F0', '0-1', '新增组织', '/addOrganization', 'addOrganization'),
('0-1-F1', NULL, NULL, '0-1-F1', NULL, NULL, '0-1-F1', '0-1', '修改组织', '/editOrganization', 'editOrganization'),
('0-1-F2', NULL, NULL, '0-1-F2', NULL, NULL, '0-1-F2', '0-1', '删除组织', '/deleteOrganization', 'deleteOrganization'),
('0-1-F3', NULL, NULL, '0-1-F3', NULL, NULL, '0-1-F3', '0-1', '新增角色', '/addRole', 'addRole'),
('0-1-F4', NULL, NULL, '0-1-F4', NULL, NULL, '0-1-F4', '0-1', '修改角色', '/editRole', 'editRole'),
('0-1-F5', NULL, NULL, '0-1-F5', NULL, NULL, '0-1-F4', '0-1', '删除角色', '/deleteRole', 'deleteRole'),
('0-2-F0', NULL, NULL, '0-2-F0', NULL, NULL, '0-2-F0', '0-2', '设置权限', NULL, 'placeholder0'),
('1-0-F0', NULL, NULL, '1-0-F0', NULL, NULL, '1-0-F0', '1-0', '新增项目', '/addProject', 'addProject'),
('1-0-F1', NULL, NULL, '1-0-F1', NULL, NULL, '1-0-F1', '1-0', '修改项目', '/editProject', 'editProject'),
('1-0-F2', NULL, NULL, '1-0-F2', NULL, NULL, '1-0-F2', '1-0', '删除项目', '/deleteProject', 'deleteProject'),
('1-0-F3', NULL, NULL, '1-0-F3', NULL, NULL, '1-0-F3', '1-0', '新增课题', '/addTopic', 'addTopic'),
('1-0-F4', NULL, NULL, '1-0-F4', NULL, NULL, '1-0-F4', '1-0', '修改课题', '/editTopic', 'editTopic'),
('1-0-F5', NULL, NULL, '1-0-F5', NULL, NULL, '1-0-F5', '1-0', '删除课题', '/deleteTopic', 'deleteTopic'),
('1-0-F6', NULL, NULL, '1-0-F6', NULL, NULL, '1-0-F6', '1-0', '新增关键节点', '/addMilestone', 'addMilestone'),
('1-0-F7', NULL, NULL, '1-0-F7', NULL, NULL, '1-0-F7', '1-0', '修改关键节点', '/editMilestone', 'editMilestone'),
('1-0-F8', NULL, NULL, '1-0-F8', NULL, NULL, '1-0-F8', '1-0', '删除关键节点', '/deleteMilestone', 'deleteMilestone'),
('1-0-F9', NULL, NULL, '1-0-F9', NULL, NULL, '1-0-F9', '1-0', '查询项目', '/queryProjects', 'queryProjects'),
('4-0-F0', NULL, NULL, '4-0-F0', NULL, NULL, '4-0-F0', '4-0', '新增国家标准', '/addStandard', 'addStandard'),
('4-0-F1', NULL, NULL, '4-0-F1', NULL, NULL, '4-0-F1', '4-0', '删除国家标准', '/deleteStandard', 'deleteStandard'),
('4-0-F2', NULL, NULL, '4-0-F2', NULL, NULL, '4-0-F2', '4-0', '修改国家标准', '/editStandard', 'editStandard'),
('4-0-F3', NULL, NULL, '4-0-F3', NULL, NULL, '4-0-F3', '4-0', '查询国家标准', '/queryStandards', 'queryStandards'),
('5-0-F0', NULL, NULL, '5-0-F0', NULL, NULL, '5-0-F0', '5-0', '新增指标定义', '/addIndexDefinition', 'addIndexDefinition'),
('5-0-F1', NULL, NULL, '5-0-F1', NULL, NULL, '5-0-F1', '5-0', '修改指标定义', '/editIndexDefinition', 'editIndexDefinition'),
('5-0-F2', NULL, NULL, '5-0-F2', NULL, NULL, '5-0-F2', '5-0', '删除指标定义', '/deleteIndexDefinition', 'deleteIndexDefinition') ON DUPLICATE KEY UPDATE id = id;

-- --------------------------------------------------------


--
-- 转存表中的数据 `tbl_sys_module`
--

INSERT INTO `TBL_SYS_MODULE` (`id`, `code`, `module_icon`, `module_path`, `altered_time`, `altered_user_id`, `created_time`, `created_user_id`, `name`) VALUES
('0', 'SYSTEM', 'setting', '/index/mybatis', NULL, NULL, NULL, NULL, '系统管理'),
('1', 'PROJECT', 'eye-o', '/index/project', NULL, NULL, NULL, NULL, '项目监理'),
('2', 'PERSONNEL', 'team', '/index/personnel', NULL, NULL, NULL, NULL, '人力资源'),
('3', 'CONTRACT', 'bank', '/index/contract', NULL, NULL, NULL, NULL, '经营管理'),
('4', 'KNOWLEDGE', 'global', '/index/global', NULL, NULL, NULL, NULL, '知识库'),
('5', 'INDEX', 'global', '/index/index', NULL, NULL, NULL, NULL, '指标管理') ON DUPLICATE KEY UPDATE id = id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_organization`
--

INSERT INTO `TBL_SYS_ORGANIZATION` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `organization_name`, `parent_id`, `name`, `description`) VALUES
('0', NULL, NULL, '0', NULL, '0', '公司', NULL, NULL, NULL),
('0-0', NULL, NULL, '0-0', NULL, '0', '组织0', '0', NULL, NULL),
('0-1', NULL, NULL, '0-1', NULL, '0', '组织1', '0', NULL, NULL),
('0-2', NULL, NULL, '0-2', NULL, '0', '组织2', '0', NULL, NULL),
('0-2-0', NULL, NULL, '0-2-0', NULL, '0', '组织2-0', '0-2', NULL, NULL),
('0-2-1', NULL, NULL, '0-2-1', NULL, '0', '组织2-1', '0-2', NULL, NULL),
('0-2-2', NULL, NULL, '0-2-2', NULL, '0', '组织2-2', '0-2', NULL, NULL),
('0-2-4', NULL, NULL, '0-2-4', NULL, '0', '组织2-3', '0-2', NULL, NULL),
('0-2-5', NULL, NULL, '0-2-5', NULL, '0', '组织2-4', '0-2', NULL, NULL),
('0-3', NULL, NULL, '0-3', NULL, '0', '组织3', '0', NULL, NULL),
('0-3-0', NULL, NULL, '0-3-0', NULL, '0', '组织3-0', '0-3', NULL, NULL),
('0-3-1', NULL, NULL, '0-3-1', NULL, '0', '组织3-1', '0-3', NULL, NULL),
('0-3-2', NULL, NULL, '0-3-2', NULL, '0', '组织3-2', '0-3', NULL, NULL),
('0-3-3', NULL, NULL, '0-3-3', NULL, '0', '组织3-3', '0-3', NULL, NULL),
('0-4', NULL, NULL, '0-4', NULL, '0', '组织4', '0', NULL, NULL),
('0-5', NULL, NULL, '0-5', NULL, '0', '组织5', '0', NULL, NULL),
('c01eebe8-2e59-4743-8dbf-dc990210289f', NULL, NULL, NULL, '2017-05-17 15:24:51', '0', '管理员组', '0', NULL, '系统维护') ON DUPLICATE KEY UPDATE id = id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_organization_user`
--

INSERT INTO `TBL_SYS_ORGANIZATION_USER` (`organization_id`, `user_id`, `is_principal`) VALUES
('c01eebe8-2e59-4743-8dbf-dc990210289f', '0', '1'),
('0', 'c10ce096-6f06-4ca3-a7c0-07a436ad8c92', '0'),
('0-0', '22e37288-112e-4c82-a2a5-a1b9eb6f019c', '0') ON DUPLICATE KEY UPDATE organization_id = organization_id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_query_authorization`
--

INSERT INTO `TBL_SYS_QUERY_AUTHORIZATION` (`organization_id`, `role_id`) VALUES
('0', '0'),
('0-0', '0'),
('0-1', '0'),
('0-2', '0'),
('0-2-0', '0'),
('0-2-1', '0'),
('0-2-2', '0'),
('0-2-4', '0'),
('0-2-5', '0'),
('0-3', '0'),
('0-3-0', '0'),
('0-3-1', '0'),
('0-3-2', '0'),
('0-3-3', '0'),
('0-4', '0'),
('0-5', '0') ON DUPLICATE KEY UPDATE organization_id = organization_id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_role`
--

INSERT INTO `TBL_SYS_ROLE` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `role_name`, `name`, `description`, `role_string`) VALUES
('0', '11:28:46', '0', '0', NULL, '0', '超级管理员', NULL, NULL, 'super_admin'),
('1fb22ed9-2261-4cac-9884-d5dc2a895648', NULL, NULL, NULL, '2017-05-18 09:21:30', '0', '普通用户', NULL, NULL, 'normal_user') ON DUPLICATE KEY UPDATE id = id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_role_function`
--

INSERT INTO `TBL_SYS_ROLE_FUNCTION` (`function_id`, `role_id`) VALUES
('1-0-F0', '0'),
('1-0-F1', '0'),
('1-0-F2', '0'),
('1-0-F3', '0'),
('1-0-F4', '0'),
('1-0-F5', '0'),
('1-0-F6', '0'),
('1-0-F7', '0'),
('1-0-F8', '0'),
('1-0-F9', '0'),
('4-0-F0', '0'),
('4-0-F1', '0'),
('4-0-F2', '0'),
('0-0-F0', '0'),
('0-0-F1', '0'),
('0-0-F2', '0'),
('0-0-F3', '0'),
('0-1-F0', '0'),
('0-1-F1', '0'),
('0-1-F2', '0'),
('0-1-F3', '0'),
('0-1-F4', '0'),
('0-1-F5', '0'),
('0-2-F0', '0'),
('1-0-F9', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F0', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F1', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F2', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F3', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('5-0-F0', '0'),
('5-0-F1', '0'),
('5-0-F2', '0') ON DUPLICATE KEY UPDATE function_id = function_id;

-- --------------------------------------------------------

--
-- 转存表中的数据 `tbl_sys_user`
--

INSERT INTO `TBL_SYS_USER` (`ID`, `CODE`, `USERNAME`, `PASSWORD`, `altered_time`, `altered_user_id`, `created_time`, `created_user_id`, `name`, `salt`) VALUES
('0', '0', 'admin', '21232F297A57A5A743894A0E4A801FC3', NULL, NULL, NULL, '0', 'DimitriZhao', NULL),
('22e37288-112e-4c82-a2a5-a1b9eb6f019c', NULL, 'test', 'E10ADC3949BA59ABBE56E057F20F883E', '09:37:05', '0', '2017-06-14 09:36:39', '0', 'TEST', NULL) ON DUPLICATE KEY UPDATE ID = ID;

-- --------------------------------------------------------
--
-- 转存表中的数据 `tbl_sys_role_user`
--

INSERT INTO `TBL_SYS_ROLE_USER` (`user_id`, `role_id`) VALUES
('0', '0'),
('22e37288-112e-4c82-a2a5-a1b9eb6f019c', '1fb22ed9-2261-4cac-9884-d5dc2a895648') ON DUPLICATE KEY UPDATE user_id = user_id;

-- --------------------------------------------------------


--
-- 转存表中的数据 `tbl_topic`
--

INSERT INTO `TBL_TOPIC` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `project_id`, `topic_name`, `name`, `comment`, `director_id`, `location`, `start_time`) VALUES
('0', NULL, NULL, '0', NULL, '0', '4', '项目4---课题0', NULL, NULL, NULL, '沈阳', '2017-08-27'),
('1', NULL, NULL, '1', NULL, '0', '5', '项目5---课题1', NULL, NULL, NULL, '深圳', '2017-12-12'),
('10', NULL, NULL, '10', NULL, '0', '11', '项目11---课题10', NULL, NULL, NULL, '上海', '2017-07-28'),
('11', NULL, NULL, '11', NULL, '0', '7', '项目7---课题11', NULL, NULL, NULL, '广州', '2017-10-08'),
('12', NULL, NULL, '12', NULL, '0', '10', '项目10---课题12', NULL, NULL, NULL, '沈阳', '2017-04-26'),
('13', NULL, NULL, '13', NULL, '0', '2', '项目2---课题13', NULL, NULL, NULL, '上海', '2016-11-10'),
('14', NULL, NULL, '14', NULL, '0', '10', '项目10---课题14', NULL, NULL, NULL, '沈阳', '2016-08-30'),
('15', NULL, NULL, '15', NULL, '0', '6', '项目6---课题15', NULL, NULL, NULL, '北京', '2017-12-09'),
('16', NULL, NULL, '16', NULL, '0', '9', '项目9---课题16', NULL, NULL, NULL, '深圳', '2017-09-25'),
('17', NULL, NULL, '17', NULL, '0', '12', '项目12---课题17', NULL, NULL, NULL, '深圳', '2017-07-19'),
('18', NULL, NULL, '18', NULL, '0', '10', '项目10---课题18', NULL, NULL, NULL, '广州', '2015-04-19'),
('19', NULL, NULL, '19', NULL, '0', '2', '项目2---课题19', NULL, NULL, NULL, '深圳', '2017-09-24'),
('2', NULL, NULL, '2', NULL, '0', '7', '项目7---课题2', NULL, NULL, NULL, '沈阳', '2017-06-25'),
('20', NULL, NULL, '20', NULL, '0', '1', '项目1---课题20', NULL, NULL, NULL, '深圳', '2015-05-13'),
('21', NULL, NULL, '21', NULL, '0', '5', '项目5---课题21', NULL, NULL, NULL, '广州', '2017-10-03'),
('22', NULL, NULL, '22', NULL, '0', '14', '项目14---课题22', NULL, NULL, NULL, '广州', '2017-10-20'),
('23', NULL, NULL, '23', NULL, '0', '14', '项目14---课题23', NULL, NULL, NULL, '广州', '2017-05-04'),
('24', NULL, NULL, '24', NULL, '0', '13', '项目13---课题24', NULL, NULL, NULL, '广州', '2016-08-13'),
('25', NULL, NULL, '25', NULL, '0', '4', '项目4---课题25', NULL, NULL, NULL, '深圳', '2017-03-09'),
('26', NULL, NULL, '26', NULL, '0', '8', '项目8---课题26', NULL, NULL, NULL, '沈阳', '2016-11-23'),
('27', NULL, NULL, '27', NULL, '0', '13', '项目13---课题27', NULL, NULL, NULL, '上海', '2017-01-10'),
('28', NULL, NULL, '28', NULL, '0', '12', '项目12---课题28', NULL, NULL, NULL, '广州', '2017-05-19'),
('29', NULL, NULL, '29', NULL, '0', '13', '项目13---课题29', NULL, NULL, NULL, '深圳', '2016-12-12'),
('3', NULL, NULL, '3', NULL, '0', '2', '项目2---课题3', NULL, NULL, NULL, '北京', '2017-10-14'),
('4', NULL, NULL, '4', NULL, '0', '4', '项目4---课题4', NULL, NULL, NULL, '北京', '2017-08-29'),
('5', NULL, NULL, '5', NULL, '0', '9', '项目9---课题5', NULL, NULL, NULL, '沈阳', '2017-01-27'),
('6', NULL, NULL, '6', NULL, '0', '7', '项目7---课题6', NULL, NULL, NULL, '沈阳', '2016-10-25'),
('7', NULL, NULL, '7', NULL, '0', '9', '项目9---课题7', NULL, NULL, NULL, '北京', '2017-06-20'),
('8', NULL, NULL, '8', NULL, '0', '6', '项目6---课题8', NULL, NULL, NULL, '北京', '2017-02-14'),
('9', NULL, NULL, '9', NULL, '0', '3', '项目3---课题9', NULL, NULL, NULL, '上海', '2017-02-28') ON DUPLICATE KEY UPDATE id = id;

-- INSERT INTO `TBL_INDEX_DEFINITION` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`,`name`,`data_precision`,`data_type`,`in_use`,`index_frequency`,`index_meaning`,`ordinary_index_library`,`status`,`use_scale`) VALUES
--   ('001', NULL, NULL, '2300', NULL, '0', '上海中', '0.3', 'double', 1 , '0.09', '没意义', 0 , '1', '较小'),
--   ('002', NULL, NULL, '2301', NULL, '0', '银监1', '0.3', 'double', 1 , '0.2', '测试用', 1 , '1', '较小'),
--   ('003', NULL, NULL, '2302', NULL, '0', '银监2', '0.2', 'double', 0 , '0.09', '测试用', 0 , '0', '较大'),
--   ('004', NULL, NULL, '2303', NULL, '0', '银监3', '0.4', 'double', 1 , '0.2', '没意义', 0 , '0', '较小') ON DUPLICATE KEY UPDATE id = id;