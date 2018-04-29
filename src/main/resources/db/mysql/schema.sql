-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-10 10:34:05
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET NAMES utf8mb4;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Database: `framework`
--

-- --------------------------------------------------------

--
-- 表的结构 `tbl_milestone`
--


CREATE TABLE IF NOT EXISTS  `TBL_MILESTONE` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `milestone_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `milestone_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_project`
--

CREATE TABLE IF NOT EXISTS  `TBL_PROJECT` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `actual_duration` int(255) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `completed` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `director_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `expected_duration` int(255) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `project_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_standard`
--
CREATE TABLE IF NOT EXISTS  `TBL_STANDARD` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_standard_resource`
--
CREATE TABLE IF NOT EXISTS  `TBL_STANDARD_RESOURCE` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `standard_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_sys_delete_authorization`
--
CREATE TABLE IF NOT EXISTS `TBL_SYS_DELETE_AUTHORIZATION` (
  `organization_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_edit_authorization`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_EDIT_AUTHORIZATION` (
  `organization_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_file`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_FILE` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_sys_function`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_FUNCTION` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `function_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `menu_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `function_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `function_string` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_menu`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_MENU` (
  `ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `MENU_PATH` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `MENU_ICON` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `MODULE_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_module`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_MODULE` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `module_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `module_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_operation_log`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_OPERATION_LOG` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `client` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_names` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `response_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_sys_organization`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_ORGANIZATION` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `organization_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_organization_user`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_ORGANIZATION_USER` (
  `organization_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_principal` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_query_authorization`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_QUERY_AUTHORIZATION` (
  `organization_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_role`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_ROLE` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_string` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_role_function`
--
DROP TABLE IF EXISTS `TBL_SYS_ROLE_FUNCTION`;

CREATE TABLE IF NOT EXISTS  `TBL_SYS_ROLE_FUNCTION` (
  `function_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- CREATE TABLE IF NOT EXISTS  `TBL_SYS_ROLE_FUNCTION` (
--   `function_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
--   `role_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_role_user`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_ROLE_USER` (
  `user_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `role_id` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_sys_user`
--
CREATE TABLE IF NOT EXISTS  `TBL_SYS_USER` (
  `ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 表的结构 `tbl_topic`
--
CREATE TABLE IF NOT EXISTS  `TBL_TOPIC` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `topic_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `director_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

 --
 -- Indexes for table `TBL_MILESTONE`
 --
 ALTER TABLE `TBL_MILESTONE`
   ADD PRIMARY KEY (`id`),
   ADD KEY `FK_jlgy4naiuflxclsndbgp8ctu8` (`project_id`);

 --
 -- Indexes for table `TBL_project`
 --
 ALTER TABLE `TBL_PROJECT`
   ADD PRIMARY KEY (`id`);

 --
 -- Indexes for table `TBL_standard`
 --
 ALTER TABLE `TBL_STANDARD`
   ADD PRIMARY KEY (`id`);

 --
 -- Indexes for table `TBL_STANDARD_resource`
 --
 ALTER TABLE `TBL_STANDARD_RESOURCE`
   ADD PRIMARY KEY (`id`),
   ADD KEY `FK_n0r46alou8q4tpjpnctfpabjo` (`standard_id`);

 --
 -- Indexes for table `TBL_sys_file`
 --
 ALTER TABLE `TBL_SYS_FILE`
   ADD PRIMARY KEY (`id`);

 --
 -- Indexes for table `TBL_SYS_function`
 --
 ALTER TABLE `TBL_SYS_FUNCTION`
   ADD PRIMARY KEY (`id`),
   ADD KEY `FK_itqdcta4ccyss9hycawsgucrm` (`menu_id`);

 --
 -- Indexes for table `TBL_SYS_menu`
 --
 ALTER TABLE `TBL_SYS_MENU`
   ADD PRIMARY KEY (`ID`),
   ADD KEY `FK_i69suv95ch4ud7irsd1lregqy` (`MODULE_ID`);

 --
 -- Indexes for table `TBL_SYS_module`
 --
 ALTER TABLE `TBL_SYS_MODULE`
   ADD PRIMARY KEY (`id`);

 --
 -- Indexes for table `TBL_SYS_operation_log`
 --
 ALTER TABLE `TBL_SYS_OPERATION_LOG`
   ADD PRIMARY KEY (`id`);

 --
 -- Indexes for table `TBL_SYS_organization`
 --
 ALTER TABLE `TBL_SYS_ORGANIZATION`
   ADD PRIMARY KEY (`id`);

 --
 -- Indexes for table `TBL_SYS_ORGANIZATION_user`
 --
 ALTER TABLE `TBL_SYS_ORGANIZATION_USER`
   ADD KEY `FK_1xf5y20elkka13pumi8r2f8r4` (`organization_id`),
   ADD KEY `FK_syj426syoggn9kae85kspa0se` (`user_id`);

 --
 -- Indexes for table `TBL_SYS_ROLE`
 --
 ALTER TABLE `TBL_SYS_ROLE`
   ADD PRIMARY KEY (`id`);

 --
 -- Indexes for table `TBL_SYS_ROLE_FUNCTION`
 --
 ALTER TABLE `TBL_SYS_ROLE_FUNCTION`
   ADD KEY `FK_tgfnmsm51p1heid7qd9wcghxj` (`function_id`),
   ADD KEY `FK_2r3mx5cv4q1eu6i7oex4a7y65` (`role_id`);

 --
 -- Indexes for table `TBL_SYS_role_user`
 --
 ALTER TABLE `TBL_SYS_ROLE_USER`
   ADD KEY `FK_4rbt5lhjoqj0r268ur0gcurf2` (`role_id`),
   ADD KEY `FK_44m1qqntwycmydgmmdcmagdn3` (`user_id`);

 --
 -- Indexes for table `TBL_SYS_user`
 --
 ALTER TABLE `TBL_SYS_USER`
   ADD PRIMARY KEY (`ID`);

 --
 -- Indexes for table `TBL_topic`
 --
 ALTER TABLE `TBL_TOPIC`
   ADD PRIMARY KEY (`id`),
   ADD KEY `FK_o8dc6e1w8u4ci53fjycq0fm3q` (`project_id`);

 --
 -- 限制表 `TBL_standard_RESOURCE`
 --
 ALTER TABLE `TBL_STANDARD_RESOURCE`
   ADD CONSTRAINT `FK_c7j3o7u37sq49med5mw7x7qq6` FOREIGN KEY (`id`) REFERENCES `TBL_SYS_FILE` (`id`),
   ADD CONSTRAINT `FK_n0r46alou8q4tpjpnctfpabjo` FOREIGN KEY (`standard_id`) REFERENCES `TBL_STANDARD` (`id`);

 --
 -- 限制表 `TBL_SYS_role_user`
 --
 ALTER TABLE `TBL_SYS_ROLE_USER`
   ADD CONSTRAINT `FK_44m1qqntwycmydgmmdcmagdn3` FOREIGN KEY (`user_id`) REFERENCES `TBL_SYS_USER` (`ID`),
   ADD CONSTRAINT `FK_4rbt5lhjoqj0r268ur0gcurf2` FOREIGN KEY (`role_id`) REFERENCES `TBL_SYS_ROLE` (`id`);



-- --------------------------------------------------------

# --
# -- 表的结构 `act_evt_log`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_evt_log` (
#   `LOG_NR_` bigint(20) NOT NULL,
#   `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
#   `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `DATA_` longblob,
#   `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `LOCK_TIME_` timestamp NULL DEFAULT NULL,
#   `IS_PROCESSED_` tinyint(4) DEFAULT '0'
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ge_bytearray`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_ge_bytearray` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `BYTES_` longblob,
#   `GENERATED_` tinyint(4) DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ge_property`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_ge_property` (
#   `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
#   `REV_` int(11) DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# --
# -- 表的结构 `act_hi_actinst`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_actinst` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `START_TIME_` datetime NOT NULL,
#   `END_TIME_` datetime DEFAULT NULL,
#   `DURATION_` bigint(20) DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_hi_attachment`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_attachment` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TIME_` datetime DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_hi_comment`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_comment` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TIME_` datetime NOT NULL,
#   `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `FULL_MSG_` longblob
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_hi_detail`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_detail` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `TIME_` datetime NOT NULL,
#   `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `DOUBLE_` double DEFAULT NULL,
#   `LONG_` bigint(20) DEFAULT NULL,
#   `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_hi_identitylink`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_identitylink` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_hi_procinst`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_procinst` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `START_TIME_` datetime NOT NULL,
#   `END_TIME_` datetime DEFAULT NULL,
#   `DURATION_` bigint(20) DEFAULT NULL,
#   `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_hi_taskinst`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_taskinst` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `START_TIME_` datetime NOT NULL,
#   `CLAIM_TIME_` datetime DEFAULT NULL,
#   `END_TIME_` datetime DEFAULT NULL,
#   `DURATION_` bigint(20) DEFAULT NULL,
#   `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `PRIORITY_` int(11) DEFAULT NULL,
#   `DUE_DATE_` datetime DEFAULT NULL,
#   `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_hi_varinst`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_hi_varinst` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `DOUBLE_` double DEFAULT NULL,
#   `LONG_` bigint(20) DEFAULT NULL,
#   `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `CREATE_TIME_` datetime DEFAULT NULL,
#   `LAST_UPDATED_TIME_` datetime DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_id_group`
# --
#
# CREATE TABLE IF NOT EXISTS  `act_id_group` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_id_info`
# --
#
# CREATE TABLE `act_id_info` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PASSWORD_` longblob,
#   `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_id_membership`
# --
#
# CREATE TABLE `act_id_membership` (
#   `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_id_user`
# --
#
# CREATE TABLE `act_id_user` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_re_deployment`
# --
#
# CREATE TABLE `act_re_deployment` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
#   `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_re_model`
# --
#
# CREATE TABLE `act_re_model` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `CREATE_TIME_` timestamp NULL DEFAULT NULL,
#   `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
#   `VERSION_` int(11) DEFAULT NULL,
#   `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_re_procdef`
# --
#
# CREATE TABLE `act_re_procdef` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `VERSION_` int(11) NOT NULL,
#   `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
#   `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
#   `SUSPENSION_STATE_` int(11) DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ru_event_subscr`
# --
#
# CREATE TABLE `act_ru_event_subscr` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ru_execution`
# --
#
# CREATE TABLE `act_ru_execution` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
#   `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
#   `IS_SCOPE_` tinyint(4) DEFAULT NULL,
#   `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
#   `SUSPENSION_STATE_` int(11) DEFAULT NULL,
#   `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `LOCK_TIME_` timestamp NULL DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ru_identitylink`
# --
#
# CREATE TABLE `act_ru_identitylink` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ru_job`
# --
#
# CREATE TABLE `act_ru_job` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
#   `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `RETRIES_` int(11) DEFAULT NULL,
#   `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `DUEDATE_` timestamp NULL DEFAULT NULL,
#   `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ru_task`
# --
#
# CREATE TABLE `act_ru_task` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PRIORITY_` int(11) DEFAULT NULL,
#   `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
#   `DUE_DATE_` datetime DEFAULT NULL,
#   `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
#   `SUSPENSION_STATE_` int(11) DEFAULT NULL,
#   `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
#   `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# -- --------------------------------------------------------
#
# --
# -- 表的结构 `act_ru_variable`
# --
#
# CREATE TABLE `act_ru_variable` (
#   `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
#   `REV_` int(11) DEFAULT NULL,
#   `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
#   `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
#   `DOUBLE_` double DEFAULT NULL,
#   `LONG_` bigint(20) DEFAULT NULL,
#   `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
#   `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

# --
# -- Indexes for table `act_evt_log`
# --
# ALTER TABLE `act_evt_log`
#   ADD PRIMARY KEY (`LOG_NR_`);
#
# --
# -- Indexes for table `act_ge_bytearray`
# --
# ALTER TABLE `act_ge_bytearray`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`);
#
# --
# -- Indexes for table `act_ge_property`
# --
# ALTER TABLE `act_ge_property`
#   ADD PRIMARY KEY (`NAME_`);
#
# --
# -- Indexes for table `act_hi_actinst`
# --
# ALTER TABLE `act_hi_actinst`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
#   ADD KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
#   ADD KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
#   ADD KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`);
#
# --
# -- Indexes for table `act_hi_attachment`
# --
# ALTER TABLE `act_hi_attachment`
#   ADD PRIMARY KEY (`ID_`);
#
# --
# -- Indexes for table `act_hi_comment`
# --
# ALTER TABLE `act_hi_comment`
#   ADD PRIMARY KEY (`ID_`);
#
# --
# -- Indexes for table `act_hi_detail`
# --
# ALTER TABLE `act_hi_detail`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
#   ADD KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
#   ADD KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
#   ADD KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
#   ADD KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`);
#
# --
# -- Indexes for table `act_hi_identitylink`
# --
# ALTER TABLE `act_hi_identitylink`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
#   ADD KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
#   ADD KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`);
#
# --
# -- Indexes for table `act_hi_procinst`
# --
# ALTER TABLE `act_hi_procinst`
#   ADD PRIMARY KEY (`ID_`),
#   ADD UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
#   ADD KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
#   ADD KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`);
#
# --
# -- Indexes for table `act_hi_taskinst`
# --
# ALTER TABLE `act_hi_taskinst`
#   ADD PRIMARY KEY (`ID_`);
#
# --
# -- Indexes for table `act_hi_varinst`
# --
# ALTER TABLE `act_hi_varinst`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
#   ADD KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
#   ADD KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`);
#
# --
# -- Indexes for table `act_id_group`
# --
# ALTER TABLE `act_id_group`
#   ADD PRIMARY KEY (`ID_`);
#
# --
# -- Indexes for table `act_id_info`
# --
# ALTER TABLE `act_id_info`
#   ADD PRIMARY KEY (`ID_`);
#
# --
# -- Indexes for table `act_id_membership`
# --
# ALTER TABLE `act_id_membership`
#   ADD PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
#   ADD KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`);
#
# --
# -- Indexes for table `act_id_user`
# --
# ALTER TABLE `act_id_user`
#   ADD PRIMARY KEY (`ID_`);
#
# --
# -- Indexes for table `act_re_deployment`
# --
# ALTER TABLE `act_re_deployment`
#   ADD PRIMARY KEY (`ID_`);
#
# --
# -- Indexes for table `act_re_model`
# --
# ALTER TABLE `act_re_model`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
#   ADD KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
#   ADD KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`);
#
# --
# -- Indexes for table `act_re_procdef`
# --
# ALTER TABLE `act_re_procdef`
#   ADD PRIMARY KEY (`ID_`),
#   ADD UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`);
#
# --
# -- Indexes for table `act_ru_event_subscr`
# --
# ALTER TABLE `act_ru_event_subscr`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
#   ADD KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`);
#
# --
# -- Indexes for table `act_ru_execution`
# --
# ALTER TABLE `act_ru_execution`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
#   ADD KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
#   ADD KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
#   ADD KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
#   ADD KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`);
#
# --
# -- Indexes for table `act_ru_identitylink`
# --
# ALTER TABLE `act_ru_identitylink`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
#   ADD KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
#   ADD KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
#   ADD KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
#   ADD KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`);
#
# --
# -- Indexes for table `act_ru_job`
# --
# ALTER TABLE `act_ru_job`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`);
#
# --
# -- Indexes for table `act_ru_task`
# --
# ALTER TABLE `act_ru_task`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
#   ADD KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
#   ADD KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
#   ADD KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`);
#
# --
# -- Indexes for table `act_ru_variable`
# --
# ALTER TABLE `act_ru_variable`
#   ADD PRIMARY KEY (`ID_`),
#   ADD KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
#   ADD KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
#   ADD KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
#   ADD KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`);



--
-- 在导出的表使用AUTO_INCREMENT
--

# --
# -- 使用表AUTO_INCREMENT `act_evt_log`
# --
# ALTER TABLE `act_evt_log`
#   MODIFY `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT;
# --
# -- 限制导出的表
# --
#
# --
# -- 限制表 `act_ge_bytearray`
# --
# ALTER TABLE `act_ge_bytearray`
#   ADD CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`);
#
# --
# -- 限制表 `act_id_membership`
# --
# ALTER TABLE `act_id_membership`
#   ADD CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`);
#
# --
# -- 限制表 `act_re_model`
# --
# ALTER TABLE `act_re_model`
#   ADD CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`);
#
# --
# -- 限制表 `act_ru_event_subscr`
# --
# ALTER TABLE `act_ru_event_subscr`
#   ADD CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`);
#
# --
# -- 限制表 `act_ru_execution`
# --
# ALTER TABLE `act_ru_execution`
#   ADD CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
#   ADD CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`);
#
# --
# -- 限制表 `act_ru_identitylink`
# --
# ALTER TABLE `act_ru_identitylink`
#   ADD CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`);
#
# --
# -- 限制表 `act_ru_job`
# --
# ALTER TABLE `act_ru_job`
#   ADD CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`);
#
# --
# -- 限制表 `act_ru_task`
# --
# ALTER TABLE `act_ru_task`
#   ADD CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`);
#
# --
# -- 限制表 `act_ru_variable`
# --
# ALTER TABLE `act_ru_variable`
#   ADD CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
#   ADD CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`);



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;