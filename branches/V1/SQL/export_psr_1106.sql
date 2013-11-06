--------------------------------------------------------
--  文件已创建 - 星期三-十一月-06-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AUTH_电厂
--------------------------------------------------------

  CREATE TABLE "AUTH_电厂" 
   (	"ID" VARCHAR2(200), 
	"DOC_ID" VARCHAR2(200), 
	"VALUE" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH_结论
--------------------------------------------------------

  CREATE TABLE "AUTH_结论" 
   (	"ID" VARCHAR2(200), 
	"DOC_ID" VARCHAR2(200), 
	"VALUE" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH_事实
--------------------------------------------------------

  CREATE TABLE "AUTH_事实" 
   (	"ID" VARCHAR2(200), 
	"DOC_ID" VARCHAR2(200), 
	"VALUE" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH_添加记录
--------------------------------------------------------

  CREATE TABLE "AUTH_添加记录" 
   (	"ID" VARCHAR2(1000), 
	"DOC_ID" VARCHAR2(1000), 
	"VALUE" VARCHAR2(1000)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH_要素
--------------------------------------------------------

  CREATE TABLE "AUTH_要素" 
   (	"ID" VARCHAR2(200), 
	"DOC_ID" VARCHAR2(200), 
	"VALUE" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH_用户授权
--------------------------------------------------------

  CREATE TABLE "AUTH_用户授权" 
   (	"ID" VARCHAR2(200), 
	"DOC_ID" VARCHAR2(200), 
	"VALUE" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH_专题
--------------------------------------------------------

  CREATE TABLE "AUTH_专题" 
   (	"ID" VARCHAR2(200), 
	"DOC_ID" VARCHAR2(200), 
	"VALUE" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table ISIMS_UPLOAD_INFO
--------------------------------------------------------

  CREATE TABLE "ISIMS_UPLOAD_INFO" 
   (	"ID" VARCHAR2(32), 
	"CONTENT_TYPE" VARCHAR2(100), 
	"FILE_NAME" VARCHAR2(100), 
	"FILE_SIZE" NUMBER(10,0), 
	"LOCATION" VARCHAR2(200), 
	"UPLOAD_TIME" DATE, 
	"UPLOAD_USER" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table PSR_APPROVE
--------------------------------------------------------

  CREATE TABLE "PSR_APPROVE" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"APPROVE_BY" VARCHAR2(255), 
	"APPROVE_REASON" VARCHAR2(4000), 
	"APPROVE_TIME" DATE, 
	"RECORD_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PSR_BACK
--------------------------------------------------------

  CREATE TABLE "PSR_BACK" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"BACK_BY" VARCHAR2(255), 
	"BACK_REASON" VARCHAR2(4000), 
	"BACK_TIME" DATE, 
	"RECORD_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PSR_FACT
--------------------------------------------------------

  CREATE TABLE "PSR_FACT" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"AGAINSTFACTS" VARCHAR2(255), 
	"ASSOCIATERESULT" NUMBER(10,0), 
	"CONTENT" CLOB, 
	"FACTNO" NUMBER(10,0), 
	"FUHEXIANG" VARCHAR2(255), 
	"IMAGES_PATH" VARCHAR2(255), 
	"ISFH" NUMBER(1,0), 
	"ISPC" NUMBER(1,0), 
	"PIANCHAXIANG" VARCHAR2(255), 
	"RECORDID" VARCHAR2(255), 
	"RECORDNO" VARCHAR2(255), 
	"STRFACTAPPROVECOMMENT" VARCHAR2(255), 
	"STRFACTSTATUS" VARCHAR2(255), 
	"FACTFILENUM" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PSR_FILE
--------------------------------------------------------

  CREATE TABLE "PSR_FILE" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"FILE_DESC" VARCHAR2(255), 
	"FILE_NAME" VARCHAR2(255), 
	"FILE_PATH" VARCHAR2(255), 
	"RE_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PSR_RECORD
--------------------------------------------------------

  CREATE TABLE "PSR_RECORD" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"APPROVERBY" VARCHAR2(255), 
	"APPROVERTIME" DATE, 
	"COMMENTS" CLOB, 
	"COUNT" VARCHAR2(255), 
	"DANWEI" VARCHAR2(255), 
	"EQUIPTMENT" VARCHAR2(255), 
	"FACILITY" VARCHAR2(255), 
	"HAVEATTACHED" NUMBER(1,0), 
	"HAVEQIANGXIANG" NUMBER(1,0), 
	"HAVERUOXIANG" NUMBER(1,0), 
	"ISUPDATED" NUMBER(1,0), 
	"ISUPLOAD" NUMBER(1,0), 
	"INPUTTIME" DATE, 
	"INPUTUSER" VARCHAR2(255), 
	"INPUTUSERSUOXIE" VARCHAR2(255), 
	"ISACTIVITYINSPECTION" NUMBER(1,0), 
	"ISCOMMUNICATION" NUMBER(1,0), 
	"ISCOMPLIANCE" NUMBER(1,0), 
	"ISDOCUMENTREVISION" NUMBER(1,0), 
	"ISWALKDOWN" NUMBER(1,0), 
	"RESULT" VARCHAR2(255), 
	"RECORDDESCIPTION" VARCHAR2(4000), 
	"RECORDNO" VARCHAR2(255), 
	"SENDBACKREASON" VARCHAR2(4000), 
	"PSR_STATUS" VARCHAR2(255), 
	"TOPIC" VARCHAR2(3000), 
	"TOPICDESC" VARCHAR2(4000), 
	"UPLOADEDTIME" DATE, 
	"UPDATEDTIME" DATE, 
	"YAOSUBINHAO" VARCHAR2(255), 
	"ZHUANGTIBIANHAO" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PSR_RECORDRESULT
--------------------------------------------------------

  CREATE TABLE "PSR_RECORDRESULT" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"CONTENT" CLOB, 
	"FACTNOS" VARCHAR2(255), 
	"ISFH" NUMBER(1,0), 
	"ISPC" NUMBER(1,0), 
	"RECORDID" VARCHAR2(255), 
	"RECORDNO" VARCHAR2(255), 
	"RESULTNO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SYS_PERMISSION
--------------------------------------------------------

  CREATE TABLE "SYS_PERMISSION" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"PER_DESC" VARCHAR2(255), 
	"PER_ICON" VARCHAR2(255), 
	"PER_NAME" VARCHAR2(255), 
	"PER_PID" VARCHAR2(255), 
	"PER_SORTNO" NUMBER(10,0), 
	"PER_TYPE" NUMBER(10,0), 
	"URL" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SYS_ROLE
--------------------------------------------------------

  CREATE TABLE "SYS_ROLE" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"ORG_ID" VARCHAR2(255), 
	"ROLE_DESC" VARCHAR2(255), 
	"ROLE_NAME" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SYS_ROLEPERMISSION_REL
--------------------------------------------------------

  CREATE TABLE "SYS_ROLEPERMISSION_REL" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"PERM_ID" VARCHAR2(255), 
	"ROLE_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SYS_USER
--------------------------------------------------------

  CREATE TABLE "SYS_USER" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"LOGIN_NAME" VARCHAR2(255), 
	"LOGIN_PASSWORD" VARCHAR2(255), 
	"ROLE_ID" VARCHAR2(255), 
	"UNIT_ID" VARCHAR2(255), 
	"USER_ADDRESS" VARCHAR2(255), 
	"USER_AGE" NUMBER(10,0), 
	"USER_DESC" VARCHAR2(255), 
	"USER_NAME" VARCHAR2(255), 
	"USER_SEX" NUMBER(5,0), 
	"USER_TEL" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SYS_USERPERMISSION_REL
--------------------------------------------------------

  CREATE TABLE "SYS_USERPERMISSION_REL" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"PERM_ID" VARCHAR2(255), 
	"USER_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SYS_USERROLE_REL
--------------------------------------------------------

  CREATE TABLE "SYS_USERROLE_REL" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"ROLE_ID" VARCHAR2(255), 
	"SYSTEM_ID" VARCHAR2(255), 
	"USER_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table TLK_电厂
--------------------------------------------------------

  CREATE TABLE "TLK_电厂" 
   (	"PARENT" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"FORMID" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"FLOWID" VARCHAR2(200), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"STATELABEL" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"AUDITORLIST" CLOB, 
	"ID" VARCHAR2(200), 
	"ITEM_电厂编号" VARCHAR2(200), 
	"ITEM_电厂名称" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table TLK_结论
--------------------------------------------------------

  CREATE TABLE "TLK_结论" 
   (	"PARENT" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"FORMID" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"FLOWID" VARCHAR2(200), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"STATELABEL" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"AUDITORLIST" CLOB, 
	"ITEM_针对事实编号" VARCHAR2(200), 
	"ITEM_结论内容" CLOB, 
	"ITEM_符合项" VARCHAR2(200), 
	"ID" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table TLK_事实
--------------------------------------------------------

  CREATE TABLE "TLK_事实" 
   (	"PARENT" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"FORMID" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"FLOWID" VARCHAR2(200), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"STATELABEL" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"AUDITORLIST" CLOB, 
	"ID" VARCHAR2(200), 
	"ITEM_图片上传" CLOB, 
	"ITEM_事实内容" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table TLK_添加记录
--------------------------------------------------------

  CREATE TABLE "TLK_添加记录" 
   (	"PARENT" VARCHAR2(1000), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(1000), 
	"OWNER" VARCHAR2(1000), 
	"STATE" VARCHAR2(1000), 
	"AUDITUSER" VARCHAR2(1000), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(1000), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(1000), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(1,0), 
	"FORMID" VARCHAR2(1000), 
	"ISTMP" NUMBER(1,0), 
	"FLOWID" VARCHAR2(1000), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(1000), 
	"APPLICATIONID" VARCHAR2(1000), 
	"STATEINT" NUMBER(10,0), 
	"STATELABEL" VARCHAR2(1000), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(1000), 
	"LASTMODIFIER" VARCHAR2(1000), 
	"DOMAINID" VARCHAR2(1000), 
	"AUDITORLIST" CLOB, 
	"ITEM_电厂" VARCHAR2(1000), 
	"ITEM_要素" VARCHAR2(1000), 
	"ITEM_保存时间" VARCHAR2(1000), 
	"ITEM_专题" VARCHAR2(1000), 
	"ITEM_提交时间" VARCHAR2(1000), 
	"ITEM_记录编号" VARCHAR2(1000), 
	"ITEM_录入员" VARCHAR2(1000), 
	"ITEM_状态" VARCHAR2(1000), 
	"ITEM_审查对象" VARCHAR2(1000), 
	"ITEM_设备编码" VARCHAR2(1000), 
	"ITEM_审查范围" CLOB, 
	"ITEM_用户" VARCHAR2(1000), 
	"ITEM_审查方式" CLOB, 
	"ITEM_事实描述" VARCHAR2(1000), 
	"ID" VARCHAR2(1000)
   ) ;
--------------------------------------------------------
--  DDL for Table TLK_要素
--------------------------------------------------------

  CREATE TABLE "TLK_要素" 
   (	"PARENT" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"FORMID" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"FLOWID" VARCHAR2(200), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"STATELABEL" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"AUDITORLIST" CLOB, 
	"ID" VARCHAR2(200), 
	"ITEM_要素编号" VARCHAR2(200), 
	"ITEM_要素名称" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table TLK_用户授权
--------------------------------------------------------

  CREATE TABLE "TLK_用户授权" 
   (	"PARENT" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"FORMID" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"FLOWID" VARCHAR2(200), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"STATELABEL" VARCHAR2(200), 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"ID" VARCHAR2(200), 
	"ITEM_电厂" VARCHAR2(200), 
	"ITEM_用户" VARCHAR2(200), 
	"ITEM_要素" VARCHAR2(200), 
	"ITEM_专题" VARCHAR2(200), 
	"AUDITORLIST" VARCHAR2(200), 
	"AUDITORNAMES" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table TLK_专题
--------------------------------------------------------

  CREATE TABLE "TLK_专题" 
   (	"PARENT" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"FORMID" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"FLOWID" VARCHAR2(200), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"STATELABEL" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"AUDITORLIST" CLOB, 
	"ID" VARCHAR2(200), 
	"ITEM_专题编号" VARCHAR2(200), 
	"ITEM_属于要素" VARCHAR2(200), 
	"ITEM_专题名" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table T_ACTORHIS
--------------------------------------------------------

  CREATE TABLE "T_ACTORHIS" 
   (	"ID" VARCHAR2(200), 
	"ACTORID" VARCHAR2(200), 
	"NAME" VARCHAR2(200), 
	"AGENTID" VARCHAR2(200), 
	"AGENTNAME" VARCHAR2(200), 
	"TYPE" NUMBER(10,0), 
	"PROCESSTIME" TIMESTAMP (6), 
	"ATTITUDE" VARCHAR2(200), 
	"NODEHIS_ID" VARCHAR2(200), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"FLOWSTATERT_ID" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table T_ACTORRT
--------------------------------------------------------

  CREATE TABLE "T_ACTORRT" 
   (	"ID" VARCHAR2(200), 
	"ACTORID" VARCHAR2(200), 
	"NAME" VARCHAR2(200), 
	"ISPROCESSED" NUMBER(10,0), 
	"TYPE" NUMBER(10,0), 
	"NODERT_ID" VARCHAR2(200), 
	"FLOWSTATERT_ID" VARCHAR2(200), 
	"DEADLINE" TIMESTAMP (6), 
	"SORTID" VARCHAR2(200), 
	"PENDING" NUMBER(10,0), 
	"ISREAD" NUMBER(10,0), 
	"DOMAINID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table T_CIRCULATOR
--------------------------------------------------------

  CREATE TABLE "T_CIRCULATOR" 
   (	"ID" VARCHAR2(200), 
	"NAME" VARCHAR2(200), 
	"USERID" VARCHAR2(200), 
	"DOC_ID" VARCHAR2(200), 
	"NODERT_ID" VARCHAR2(200), 
	"FLOWSTATERT_ID" VARCHAR2(200), 
	"CCTIME" TIMESTAMP (6), 
	"READTIME" TIMESTAMP (6), 
	"DEADLINE" TIMESTAMP (6), 
	"ISREAD" NUMBER(10,0), 
	"DOMAINID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"VERSION" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table T_COUNTER
--------------------------------------------------------

  CREATE TABLE "T_COUNTER" 
   (	"ID" VARCHAR2(200), 
	"COUNTER" NUMBER(10,0), 
	"NAME" VARCHAR2(200), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table T_DOCUMENT
--------------------------------------------------------

  CREATE TABLE "T_DOCUMENT" 
   (	"ID" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"AUTHOR_DEPT_INDEX" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"FORMID" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATELABEL" VARCHAR2(200), 
	"INITIATOR" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"PARENT" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"AUDITORLIST" CLOB, 
	"MAPPINGID" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table T_FLOWSTATERT
--------------------------------------------------------

  CREATE TABLE "T_FLOWSTATERT" 
   (	"ID" VARCHAR2(200), 
	"DOCID" VARCHAR2(200), 
	"FLOWID" VARCHAR2(200), 
	"STATE" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"PARENT" VARCHAR2(200), 
	"FLOWNAME" VARCHAR2(200), 
	"FLOWXML" CLOB, 
	"LASTMODIFIERID" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"APPLICATIONID" VARCHAR2(200), 
	"SUBFLOWNODEID" VARCHAR2(200), 
	"COMPLETE" NUMBER(10,0), 
	"CALLBACK" NUMBER(10,0), 
	"TOKEN" VARCHAR2(200), 
	"STATELABEL" VARCHAR2(200), 
	"INITIATOR" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"AUDITORLIST" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"SUB_POSITION" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table T_FLOW_INTERVENTION
--------------------------------------------------------

  CREATE TABLE "T_FLOW_INTERVENTION" 
   (	"ID" VARCHAR2(200), 
	"SUMMARY" CLOB, 
	"FLOWNAME" VARCHAR2(200), 
	"STATELABEL" VARCHAR2(200), 
	"INITIATOR" VARCHAR2(200), 
	"LASTAUDITOR" VARCHAR2(200), 
	"FIRSTPROCESSTIME" TIMESTAMP (6), 
	"LASTPROCESSTIME" TIMESTAMP (6), 
	"FLOWID" VARCHAR2(200), 
	"FORMID" VARCHAR2(200), 
	"DOCID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"VERSION" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table T_FLOW_PROXY
--------------------------------------------------------

  CREATE TABLE "T_FLOW_PROXY" 
   (	"ID" VARCHAR2(200), 
	"FLOWNAME" VARCHAR2(200), 
	"FLOWID" VARCHAR2(200), 
	"DESCRIPTION" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"AGENTS" CLOB, 
	"AGENTSNAME" CLOB, 
	"OWNER" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"VERSION" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table T_NODERT
--------------------------------------------------------

  CREATE TABLE "T_NODERT" 
   (	"ID" VARCHAR2(200), 
	"NAME" VARCHAR2(200), 
	"NODEID" VARCHAR2(200), 
	"FLOWID" VARCHAR2(200), 
	"DOCID" VARCHAR2(200), 
	"FLOWSTATERT_ID" VARCHAR2(200), 
	"SORTID" VARCHAR2(200), 
	"NOTIFIABLE" NUMBER(10,0), 
	"DOMAINID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATELABEL" VARCHAR2(200), 
	"FLOWOPTION" VARCHAR2(200), 
	"SPLITTOKEN" VARCHAR2(200), 
	"PASSCONDITION" NUMBER(10,0), 
	"PARENTNODERTID" VARCHAR2(200), 
	"DEADLINE" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table T_PENDING
--------------------------------------------------------

  CREATE TABLE "T_PENDING" 
   (	"ID" VARCHAR2(200), 
	"DOCID" VARCHAR2(200), 
	"LASTMODIFIED" TIMESTAMP (6), 
	"FORMNAME" VARCHAR2(200), 
	"OWNER" VARCHAR2(200), 
	"AUDITDATE" TIMESTAMP (6), 
	"AUTHOR" VARCHAR2(200), 
	"CREATED" TIMESTAMP (6), 
	"ISSUBDOC" NUMBER(10,0), 
	"CHANNELSNAME" VARCHAR2(200), 
	"FORMID" VARCHAR2(200), 
	"CHILDS" VARCHAR2(200), 
	"ISTMP" NUMBER(10,0), 
	"FLOWID" VARCHAR2(200), 
	"VERSIONS" NUMBER(10,0), 
	"SORTID" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"STATELABEL" VARCHAR2(200), 
	"AUDITUSER" VARCHAR2(200), 
	"AUDITORNAMES" CLOB, 
	"LASTFLOWOPERATION" VARCHAR2(200), 
	"STATEINT" NUMBER(10,0), 
	"PARENT" VARCHAR2(200), 
	"STATE" VARCHAR2(200), 
	"LASTMODIFIER" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200), 
	"AUDITORLIST" CLOB, 
	"SUMMARY" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table T_PENDING_ACTOR_SET
--------------------------------------------------------

  CREATE TABLE "T_PENDING_ACTOR_SET" 
   (	"DOCID" VARCHAR2(200), 
	"ACTORID" VARCHAR2(200), 
	"DOMAINID" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table T_RELATIONHIS
--------------------------------------------------------

  CREATE TABLE "T_RELATIONHIS" 
   (	"ID" VARCHAR2(200), 
	"ACTIONTIME" TIMESTAMP (6), 
	"PROCESSTIME" TIMESTAMP (6), 
	"STARTNODENAME" VARCHAR2(200), 
	"FLOWID" VARCHAR2(200), 
	"FLOWNAME" VARCHAR2(200), 
	"DOCID" VARCHAR2(200), 
	"ENDNODEID" VARCHAR2(200), 
	"ENDNODENAME" VARCHAR2(200), 
	"STARTNODEID" VARCHAR2(200), 
	"ISPASSED" NUMBER(10,0), 
	"ATTITUDE" VARCHAR2(200), 
	"SORTID" VARCHAR2(200), 
	"AUDITOR" VARCHAR2(200), 
	"APPLICATIONID" VARCHAR2(200), 
	"FLOWOPERATION" VARCHAR2(200), 
	"REMINDERCOUNT" NUMBER(10,0), 
	"FLOWSTATERT_ID" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table T_UPLOAD
--------------------------------------------------------

  CREATE TABLE "T_UPLOAD" 
   (	"ID" VARCHAR2(200), 
	"NAME" VARCHAR2(200), 
	"IMGBINARY" BLOB, 
	"FIELDID" VARCHAR2(200), 
	"TYPE" VARCHAR2(200), 
	"FILESIZE" NUMBER(10,0), 
	"USERID" VARCHAR2(200), 
	"MODIFYDATE" VARCHAR2(200), 
	"PATH" VARCHAR2(4000), 
	"FOLDERPATH" VARCHAR2(4000)
   ) ;
--------------------------------------------------------
--  DDL for Table ZJ_ORGANIZATION
--------------------------------------------------------

  CREATE TABLE "ZJ_ORGANIZATION" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"ORG_DESC" VARCHAR2(255), 
	"ORG_LEVEL" NUMBER(10,0), 
	"ORG_NAME" VARCHAR2(255), 
	"ORG_PID" VARCHAR2(255), 
	"SYSTEM_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ZJ_RECORD_PER
--------------------------------------------------------

  CREATE TABLE "ZJ_RECORD_PER" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"TABLE_NAME" VARCHAR2(255), 
	"TABLE_PROPERTY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ZJ_ROLE_ORG_REL
--------------------------------------------------------

  CREATE TABLE "ZJ_ROLE_ORG_REL" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"ORG_ID" VARCHAR2(255), 
	"ROLE_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ZJ_SYSTEM_INFO
--------------------------------------------------------

  CREATE TABLE "ZJ_SYSTEM_INFO" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"ORG_ID" VARCHAR2(255), 
	"SYSTEM_CODE" VARCHAR2(255), 
	"SYSTEM_DESC" VARCHAR2(255), 
	"SYSTEM_NAME" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ZJ_SYSTEM_RECORD_REL
--------------------------------------------------------

  CREATE TABLE "ZJ_SYSTEM_RECORD_REL" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"RECORD_ID" VARCHAR2(255), 
	"SYSTEM_ID" VARCHAR2(255), 
	"USER_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ZJ_USER_SYSTEM_DATAP_REL
--------------------------------------------------------

  CREATE TABLE "ZJ_USER_SYSTEM_DATAP_REL" 
   (	"ID" VARCHAR2(255), 
	"CREATE_DATE" DATE, 
	"CREATE_USER" VARCHAR2(255), 
	"ENTITY_STATUS" NUMBER(10,0), 
	"UPDATE_DATE" DATE, 
	"UPDATE_USER" VARCHAR2(255), 
	"VERSION" NUMBER(10,0), 
	"DATA_PERMISSION_ID" VARCHAR2(255), 
	"SYSTEM_ID" VARCHAR2(255), 
	"USER_ID" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  Constraints for Table ZJ_RECORD_PER
--------------------------------------------------------

  ALTER TABLE "ZJ_RECORD_PER" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ZJ_RECORD_PER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TLK_事实
--------------------------------------------------------

  ALTER TABLE "TLK_事实" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "TLK_事实" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_PENDING
--------------------------------------------------------

  ALTER TABLE "T_PENDING" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_PENDING" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TLK_要素
--------------------------------------------------------

  ALTER TABLE "TLK_要素" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "TLK_要素" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH_用户授权
--------------------------------------------------------

  ALTER TABLE "AUTH_用户授权" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "AUTH_用户授权" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH_专题
--------------------------------------------------------

  ALTER TABLE "AUTH_专题" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "AUTH_专题" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZJ_ORGANIZATION
--------------------------------------------------------

  ALTER TABLE "ZJ_ORGANIZATION" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ZJ_ORGANIZATION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_CIRCULATOR
--------------------------------------------------------

  ALTER TABLE "T_CIRCULATOR" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_CIRCULATOR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZJ_SYSTEM_RECORD_REL
--------------------------------------------------------

  ALTER TABLE "ZJ_SYSTEM_RECORD_REL" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ZJ_SYSTEM_RECORD_REL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_COUNTER
--------------------------------------------------------

  ALTER TABLE "T_COUNTER" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_COUNTER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_ACTORHIS
--------------------------------------------------------

  ALTER TABLE "T_ACTORHIS" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_ACTORHIS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISIMS_UPLOAD_INFO
--------------------------------------------------------

  ALTER TABLE "ISIMS_UPLOAD_INFO" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ISIMS_UPLOAD_INFO" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TLK_添加记录
--------------------------------------------------------

  ALTER TABLE "TLK_添加记录" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PSR_FILE
--------------------------------------------------------

  ALTER TABLE "PSR_FILE" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PSR_FILE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_USER
--------------------------------------------------------

  ALTER TABLE "SYS_USER" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYS_USER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TLK_用户授权
--------------------------------------------------------

  ALTER TABLE "TLK_用户授权" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "TLK_用户授权" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PSR_RECORD
--------------------------------------------------------

  ALTER TABLE "PSR_RECORD" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PSR_RECORD" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH_添加记录
--------------------------------------------------------

  ALTER TABLE "AUTH_添加记录" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZJ_USER_SYSTEM_DATAP_REL
--------------------------------------------------------

  ALTER TABLE "ZJ_USER_SYSTEM_DATAP_REL" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ZJ_USER_SYSTEM_DATAP_REL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TLK_专题
--------------------------------------------------------

  ALTER TABLE "TLK_专题" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "TLK_专题" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PSR_RECORDRESULT
--------------------------------------------------------

  ALTER TABLE "PSR_RECORDRESULT" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PSR_RECORDRESULT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TLK_电厂
--------------------------------------------------------

  ALTER TABLE "TLK_电厂" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "TLK_电厂" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH_事实
--------------------------------------------------------

  ALTER TABLE "AUTH_事实" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "AUTH_事实" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_PERMISSION
--------------------------------------------------------

  ALTER TABLE "SYS_PERMISSION" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYS_PERMISSION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_ROLEPERMISSION_REL
--------------------------------------------------------

  ALTER TABLE "SYS_ROLEPERMISSION_REL" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYS_ROLEPERMISSION_REL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_RELATIONHIS
--------------------------------------------------------

  ALTER TABLE "T_RELATIONHIS" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_RELATIONHIS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_USERPERMISSION_REL
--------------------------------------------------------

  ALTER TABLE "SYS_USERPERMISSION_REL" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYS_USERPERMISSION_REL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZJ_ROLE_ORG_REL
--------------------------------------------------------

  ALTER TABLE "ZJ_ROLE_ORG_REL" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ZJ_ROLE_ORG_REL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PSR_APPROVE
--------------------------------------------------------

  ALTER TABLE "PSR_APPROVE" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PSR_APPROVE" MODIFY ("ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table ZJ_SYSTEM_INFO
--------------------------------------------------------

  ALTER TABLE "ZJ_SYSTEM_INFO" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ZJ_SYSTEM_INFO" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_USERROLE_REL
--------------------------------------------------------

  ALTER TABLE "SYS_USERROLE_REL" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYS_USERROLE_REL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_FLOW_PROXY
--------------------------------------------------------

  ALTER TABLE "T_FLOW_PROXY" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_FLOW_PROXY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_DOCUMENT
--------------------------------------------------------

  ALTER TABLE "T_DOCUMENT" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_DOCUMENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_ROLE
--------------------------------------------------------

  ALTER TABLE "SYS_ROLE" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYS_ROLE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TLK_结论
--------------------------------------------------------

  ALTER TABLE "TLK_结论" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "TLK_结论" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_FLOWSTATERT
--------------------------------------------------------

  ALTER TABLE "T_FLOWSTATERT" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_FLOWSTATERT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_ACTORRT
--------------------------------------------------------

  ALTER TABLE "T_ACTORRT" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_ACTORRT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PSR_FACT
--------------------------------------------------------

  ALTER TABLE "PSR_FACT" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PSR_FACT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH_电厂
--------------------------------------------------------

  ALTER TABLE "AUTH_电厂" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "AUTH_电厂" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH_要素
--------------------------------------------------------

  ALTER TABLE "AUTH_要素" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "AUTH_要素" MODIFY ("ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table T_FLOW_INTERVENTION
--------------------------------------------------------

  ALTER TABLE "T_FLOW_INTERVENTION" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_FLOW_INTERVENTION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_NODERT
--------------------------------------------------------

  ALTER TABLE "T_NODERT" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "T_NODERT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH_结论
--------------------------------------------------------

  ALTER TABLE "AUTH_结论" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "AUTH_结论" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PSR_BACK
--------------------------------------------------------

  ALTER TABLE "PSR_BACK" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PSR_BACK" MODIFY ("ID" NOT NULL ENABLE);














































--------------------------------------------------------
--  DDL for View V_RECORD
--------------------------------------------------------

  CREATE OR REPLACE VIEW "V_RECORD" ("ID", "RECORDNO", "INPUTUSER", "INPUTTIME", "TOPIC", "PSR_STATUS", "CREATE_DATE", "CREATE_USER", "UPDATE_DATE", "UPDATE_USER", "VERSION", "APPROVERBY", "APPROVERTIME", "COMMENTS", "COUNT", "DANWEI", "EQUIPTMENT", "FACILITY", "HAVEATTACHED", "HAVEQIANGXIANG", "HAVERUOXIANG", "ISUPDATED", "ISUPLOAD", "INPUTUSERSUOXIE", "ISACTIVITYINSPECTION", "ISCOMMUNICATION", "ISCOMPLIANCE", "ISDOCUMENTREVISION", "ISWALKDOWN", "RESULT", "RECORDDESCIPTION", "SENDBACKREASON", "TOPICDESC", "UPLOADEDTIME", "UPDATEDTIME", "YAOSUBINHAO", "ZHUANGTIBIANHAO", "ENTITY_STATUS") AS 
  select 
distinct(r.id), r.recordno,r.inputuser,r.inputtime,r.topic,r.psr_status,r.create_date,r.create_user,r.update_date,r.update_user,r.version,r.approverby,r.approvertime,'' as comments,r.count,r.danwei,r.equiptment,r.facility,r.haveattached,r.haveqiangxiang,r.haveruoxiang,r.isupdated,r.isupload,r.inputusersuoxie,r.isactivityinspection,r.iscommunication,r.iscompliance,r.isdocumentrevision,r.iswalkdown,r.result,r.recorddesciption,r.sendbackreason,r.topicdesc,r.uploadedtime,r.updatedtime,r.yaosubinhao,r.zhuangtibianhao,(select count(*)  from psr_recordresult t where t.ispc=1 and r.id= t.recordid) as entity_status 
from psr_record r left join psr_recordresult t on r.id= t.recordid;
--------------------------------------------------------
--  DDL for Package PERMISSIONPKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PERMISSIONPKG" as 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
TYPE PermissionCursor IS REF CURSOR;
end permissionpkg;

/

--------------------------------------------------------
--  DDL for Package USERPKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "USERPKG" as 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
TYPE UserCursor IS REF CURSOR; 
end userpkg;

/

--------------------------------------------------------
--  DDL for Procedure ADDFACT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADDFACT" 
(
  p_id in psr_fact.id%type  
, p_create_date in psr_fact.create_date%type  
, p_create_user in psr_fact.create_user%type  
, p_entity_status in psr_fact.entity_status%type  
, p_update_date in psr_fact.update_date%type  
, p_update_user in psr_fact.update_user%type  
, p_version in psr_fact.version%type  
, p_againstfacts in psr_fact.againstfacts%type  
, p_associateresult in psr_fact.associateresult%type  
, p_content in psr_fact.content%type  
, p_fuhexiang in psr_fact.fuhexiang%type  
, p_isfh in psr_fact.isfh%type  
, p_ispc in psr_fact.ispc%type  
, p_pianchaxiang in psr_fact.pianchaxiang%type  
, p_recordid in psr_fact.recordid%type  
, p_strfactapprovecomment in psr_fact.strfactapprovecomment%type  
, p_strfactstatus in psr_fact.strfactstatus%type  
, p_factno in psr_fact.factno%type  
, p_imagePath in psr_fact.images_path%type
, p_recordNo in psr_fact.recordno%type
) as 
v_count integer;

begin
  select count(*) into v_count from psr_fact where recordno = p_recordNo and factno =p_factno;
  if v_count >0 then
  delete from psr_fact where recordno = p_recordNo and factno =p_factno;
  commit;
  end if;
  
  Insert into PSR_FACT (ID,CREATE_DATE,CREATE_USER,ENTITY_STATUS,UPDATE_DATE,UPDATE_USER,VERSION,AGAINSTFACTS,ASSOCIATERESULT,CONTENT,FUHEXIANG,ISFH,ISPC,PIANCHAXIANG,RECORDID,STRFACTAPPROVECOMMENT,STRFACTSTATUS,FACTNO,images_path,recordno) 
  values (p_id,p_create_date,p_create_user,p_entity_status,p_update_date,p_update_user,0,p_againstfacts,p_associateresult,p_content,p_fuhexiang,p_isfh,p_ispc,p_pianchaxiang,p_recordid,p_strfactapprovecomment,p_strfactstatus,p_factno,p_imagepath,p_recordno);
  commit;
end addfact;

/

--------------------------------------------------------
--  DDL for Procedure ADDFILE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADDFILE" 
(
  P_ID IN PSR_FILE.ID%TYPE  
, P_CREATE_DATE IN PSR_FILE.CREATE_DATE%TYPE  
, P_CREATE_USER IN PSR_FILE.CREATE_USER%TYPE  
, P_ENTITY_STATUS IN PSR_FILE.ENTITY_STATUS%TYPE  
, P_UPDATE_DATE IN PSR_FILE.UPDATE_DATE%TYPE  
, P_UPDATE_USER IN PSR_FILE.UPDATE_USER%TYPE  
, P_VERSION IN PSR_FILE.VERSION%TYPE  
, P_FILE_DESC IN PSR_FILE.FILE_DESC%TYPE  
, P_FILE_NAME IN PSR_FILE.FILE_NAME%TYPE  
, P_FILE_PATH IN PSR_FILE.FILE_PATH%TYPE  
, P_RE_ID IN PSR_FILE.RE_ID%TYPE  
) AS 
v_count INTEGER;
BEGIN
select count(*) into v_count from psr_file where file_name = p_file_name and file_path=p_file_path;
if v_count>0 then
delete from psr_file where file_name = p_file_name and file_path=p_file_path;
commit;
end if;

Insert into PSR_FILE (ID,CREATE_DATE,CREATE_USER,ENTITY_STATUS,UPDATE_DATE,UPDATE_USER,VERSION,FILE_DESC,FILE_NAME,FILE_PATH,RE_ID) 
values (P_ID,P_CREATE_DATE,P_CREATE_USER,P_ENTITY_STATUS,P_UPDATE_DATE,P_UPDATE_USER,0,P_FILE_DESC,P_FILE_NAME,P_FILE_PATH,P_RE_ID);


END ADDFILE;

/

--------------------------------------------------------
--  DDL for Procedure ADDPERMISSION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADDPERMISSION" 
(
  p_id in sys_permission.id%type  
, p_version in sys_permission.version%type  
, p_short_name in sys_permission.per_desc%type  
, p_name in sys_permission.per_name%type  
, p_father_uuid in sys_permission.per_pid%type  
, p_sort_id in sys_permission.per_sortno%type default 1 
, p_type in sys_permission.per_type%type  
, p_url in sys_permission.url%type default 'url' 
) as 
countpermit integer;

begin
--  select count(*) into countpermit from sys_permission where per_type = p_type and per_name = p_name and per_pid = p_father_uuid;
--  if countpermit=0 then
-- delete * from sys_permission;
  insert into sys_permission(sys_permission.id,sys_permission.version,sys_permission.per_desc,sys_permission.per_name,sys_permission.per_pid
  ,sys_permission.per_sortno,sys_permission.per_type,sys_permission.url)
  values(p_id,p_version,p_short_name,p_name,p_father_uuid,p_sort_id,p_type,p_url);
  commit;
--  end if;
--  if countpermit >0 then
--  update sys_permission set sys_permission.id = p_id,sys_permission.per_desc = p_short_name , per_name = p_name,per_type= p_type,per_pid = p_father_uuid  where per_type = p_type and per_name = p_name and per_pid = p_father_uuid;
--  commit;
--  end if;
end addpermission;

/

--------------------------------------------------------
--  DDL for Procedure ADDRECORD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADDRECORD" 
(
  v_id in psr_record.id%type  
, v_create_date in psr_record.create_date%type  
, v_create_user in psr_record.create_user%type  
, v_entity_status in psr_record.entity_status%type  
, v_update_date in psr_record.update_date%type  
, v_update_user in psr_record.update_user%type  
, v_version in psr_record.version%type  
, v_approverby in psr_record.approverby%type  
, v_approvertime in psr_record.approvertime%type  
, v_comments in psr_record.comments%type  
, v_count in psr_record.count%type  
, v_danwei in psr_record.danwei%type  
, v_equiptment in psr_record.equiptment%type  
, v_facility in psr_record.facility%type  
, v_haveattached in psr_record.haveattached%type  
, v_haveqiangxiang in psr_record.haveqiangxiang%type  
, v_haveruoxiang in psr_record.haveruoxiang%type  
, v_isupdated in psr_record.isupdated%type  
, v_isupload in psr_record.isupload%type  
, v_inputtime in psr_record.inputtime%type  
, v_inputuser in psr_record.inputuser%type  
, v_inputusersuoxie in psr_record.inputusersuoxie%type  
, v_isactivityinspection in psr_record.isactivityinspection%type  
, v_iscommunication in psr_record.iscommunication%type  
, v_iscompliance in psr_record.iscompliance%type  
, v_isdocumentrevision in psr_record.isdocumentrevision%type  
, v_iswalkdown in psr_record.iswalkdown%type  
, v_result in psr_record.result%type  
, v_recorddesciption in psr_record.recorddesciption%type  
, v_recordno in psr_record.recordno%type  
, v_sendbackreason in psr_record.sendbackreason%type  
, v_psr_status in psr_record.psr_status%type  
, v_topic in psr_record.topic%type  
, v_topicdesc in psr_record.topicdesc%type  
, v_uploadedtime in psr_record.uploadedtime%type  
, v_updatedtime in psr_record.updatedtime%type  
, v_yaosubinhao in psr_record.yaosubinhao%type  
, v_zhuangtibianhao in psr_record.zhuangtibianhao%type  
) as 
--vv_count integer;
--vv_uploadedtime date;
--vv_psrrecord_row psr_record%ROWTYPE;
vv_count integer;
begin
select count(*) into vv_count from psr_record where recordno = v_recordno;

--if vv_count >0 then
--  select * into vv_psrrecord_row  from psr_record where recordno = v_recordno ;
--end if;
  
  if vv_count=0 then--or vv_psrrecord_row.id is null or vv_psrrecord_row.uploadedtime is null then
   Insert into PSR_RECORD (ID,CREATE_DATE,CREATE_USER,ENTITY_STATUS,UPDATE_DATE,UPDATE_USER,VERSION,APPROVERBY,APPROVERTIME,COMMENTS,COUNT,DANWEI,EQUIPTMENT,FACILITY,HAVEATTACHED,HAVEQIANGXIANG,HAVERUOXIANG,ISUPDATED,ISUPLOAD,INPUTTIME,INPUTUSER,INPUTUSERSUOXIE,ISACTIVITYINSPECTION,ISCOMMUNICATION,ISCOMPLIANCE,ISDOCUMENTREVISION,ISWALKDOWN,RESULT,RECORDDESCIPTION,RECORDNO,SENDBACKREASON,PSR_STATUS,TOPIC,TOPICDESC,UPLOADEDTIME,UPDATEDTIME,YAOSUBINHAO,ZHUANGTIBIANHAO) 
   values (v_id,v_create_date,v_create_user,v_entity_status,v_update_date,v_update_user,0,v_approverby,v_approvertime,v_comments,v_count,v_danwei,v_equiptment,v_facility,v_haveattached,v_haveqiangxiang,v_haveruoxiang,v_isupdated,v_isupload,v_inputtime,v_inputuser,v_inputusersuoxie,v_isactivityinspection,v_iscommunication,v_iscompliance,v_isdocumentrevision,v_iswalkdown,v_result,v_recorddesciption,v_recordno,v_sendbackreason,v_psr_status,v_topic,v_topicdesc,v_uploadedtime,v_updatedtime,v_yaosubinhao,v_zhuangtibianhao);
    commit;
    end if;
 if vv_count=1 then--and vv_psrrecord_row.psr_status<>3 and vv_psrrecord_row.psr_status<>4 then
    --dbms_output.put_line('更新!');
    update psr_record set --id=v_id, 
    create_date = v_create_date, create_user = v_create_user, entity_status = v_entity_status,update_date =v_update_date
    ,update_user = v_update_user,version = v_version , approverby = v_approverby , approvertime = v_approvertime, comments = v_comments, count = v_count,danwei = v_danwei,equiptment=v_equiptment,facility=v_facility,haveattached= v_haveattached,haveqiangxiang=v_haveqiangxiang,haveruoxiang=v_haveruoxiang,isupdated = v_isupdated,ISUPLOAD = v_isupload,inputtime = v_inputtime,inputuser= v_inputuser,inputusersuoxie = v_inputusersuoxie
    ,ISACTIVITYINSPECTION = v_isactivityinspection,ISCOMMUNICATION=v_iscommunication,ISCOMPLIANCE = v_iscompliance,ISDOCUMENTREVISION=v_isdocumentrevision,ISWALKDOWN= v_iswalkdown,RESULT = v_result,RECORDDESCIPTION=v_recorddesciption,RECORDNO=v_recordno,SENDBACKREASON=v_sendbackreason,PSR_STATUS=v_psr_status,TOPIC = v_topic,TOPICDESC = v_topicdesc,UPLOADEDTIME = v_uploadedtime,UPDATEDTIME=v_updatedtime,YAOSUBINHAO= v_yaosubinhao,ZHUANGTIBIANHAO = v_zhuangtibianhao
    where psr_record.recordno = v_recordno;
    commit;
  end if;
end addrecord;

/

--------------------------------------------------------
--  DDL for Procedure ADDRESULT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADDRESULT" 
(
  p_id in psr_recordresult.id%type  
, p_create_date in psr_recordresult.create_date%type  
, p_create_user in psr_recordresult.create_user%type  
, p_entity_status in psr_recordresult.entity_status%type  
, p_update_date in psr_recordresult.update_date%type  
, p_update_user in psr_recordresult.update_user%type  
, p_version in psr_recordresult.version%type  
, p_content in psr_recordresult.content%type  
, p_isfh in psr_recordresult.isfh%type  
, p_ispc in psr_recordresult.ispc%type  
, p_recordid in psr_recordresult.recordid%type  
, p_factnos in psr_recordresult.factnos%type  
, p_resultno in psr_recordresult.resultno%type  
, p_recordno in psr_recordresult.recordno%type
) as 
v_count integer;
begin
  select count(*) into v_count from psr_recordresult where recordno = p_recordno and resultno = p_resultno;
  if v_count >0 then
  delete from psr_recordresult where recordno = p_recordno and resultno = p_resultno;
  end if;
  
  Insert into PSR_RECORDRESULT (ID,CREATE_DATE,CREATE_USER,ENTITY_STATUS,UPDATE_DATE,UPDATE_USER,VERSION,CONTENT,ISFH,ISPC,RECORDID,FACTNOS,RESULTNO,recordno) 
  values (p_id,p_create_date,p_create_user,p_entity_status,p_update_date,p_update_user,p_version,p_content,p_isfh,p_ispc,p_recordid,p_factnos,p_resultno,p_recordno);
  commit;
  
end addresult;

/

--------------------------------------------------------
--  DDL for Procedure ADDUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADDUSER" 
(
  p_id in sys_user.id%type  
, p_version in sys_user.version%type  
, p_loginname in sys_user.login_name%type default 0 
, p_login_password in sys_user.login_password%type  
, p_role_id in sys_user.role_id%type  
, p_unit_id in sys_user.unit_id%type  
, p_user_name in sys_user.user_name%type  
, p_userDes  in sys_user.user_desc%type
) as 
haveone INTEGER;
begin
select count(*) into haveone from sys_user where login_name = p_loginname;

IF haveone>= 1 THEN
update sys_user set login_password = p_login_password, role_id= p_role_id, unit_id = p_unit_id
,user_desc = p_userDes where login_name = p_loginname;
commit;
else
--IF haveone=0 then
insert into sys_user(sys_user.id,sys_user.version,sys_user.login_name,sys_user.login_password,sys_user.role_id,sys_user.unit_id,sys_user.user_name,user_desc)
values (p_id,p_version,p_loginname,p_login_password,p_role_id,p_unit_id,p_user_name,p_userDes);
commit;
end if;

end adduser;

/

--------------------------------------------------------
--  DDL for Procedure ADDUSERPERMISSIONREL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADDUSERPERMISSIONREL" 
(
  p_id in sys_userpermission_rel.id%type  
, p_version in sys_userpermission_rel.version%type  
, p_perm_id in sys_userpermission_rel.perm_id%type  
, p_user_id in sys_userpermission_rel.user_id%type  
) as 
v_count integer;
begin
  select count(*) into v_count from sys_userpermission_rel where perm_id = p_perm_id and user_id = p_user_id;
  if v_count = 0 then
  Insert into SYS_USERPERMISSION_REL (ID,VERSION,PERM_ID,USER_ID) 
  values (p_id,p_version,p_perm_id,p_user_id);
  commit;
  end if;
end adduserpermissionrel;

/

--------------------------------------------------------
--  DDL for Procedure SHOWALLPERMISSION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOWALLPERMISSION" 
(
  permissions out permissionpkg.permissioncursor 
) as 
begin
  open permissions for select * from sys_permission; 
end showallpermission;

/

--------------------------------------------------------
--  DDL for Procedure SHOWALLUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOWALLUSER" 
(
  users out userpkg.usercursor  
) as 
begin
  open users for  select * from sys_user;
end showalluser;

/

--------------------------------------------------------
--  DDL for Procedure TEST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEST" 
(
  param1 out integer  
) as 
begin
  param1 := 1;
end test;

/

