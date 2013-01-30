
  CREATE OR REPLACE PROCEDURE "PRODUCE"."ADDFACT" 
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
) as 
v_count integer;

begin
  select count(*) into v_count from psr_fact where recordid = p_recordid and factno =p_factno;
  if v_count >0 then
  delete from psr_fact where recordid = p_recordid and factno =p_factno;
  commit;
  end if;
  
  Insert into PSR_FACT (ID,CREATE_DATE,CREATE_USER,ENTITY_STATUS,UPDATE_DATE,UPDATE_USER,VERSION,AGAINSTFACTS,ASSOCIATERESULT,CONTENT,FUHEXIANG,ISFH,ISPC,PIANCHAXIANG,RECORDID,STRFACTAPPROVECOMMENT,STRFACTSTATUS,FACTNO) 
  values (p_id,p_create_date,p_create_user,p_entity_status,p_update_date,p_update_user,0,p_againstfacts,p_associateresult,p_content,p_fuhexiang,p_isfh,p_ispc,p_pianchaxiang,p_recordid,p_strfactapprovecomment,p_strfactstatus,p_factno);
  commit;
end addfact;
/
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."ADDPERMISSION" 
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
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."ADDRECORD" 
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
vv_psrrecord_row psr_record%ROWTYPE;
vv_count integer;
begin
select count(*) into vv_count from psr_record where recordno = v_recordno;

if vv_count >0 then
  select * into vv_psrrecord_row  from psr_record where recordno = v_recordno ;
end if;
  
  if vv_count=0 or vv_psrrecord_row.id is null or vv_psrrecord_row.uploadedtime is null then
   Insert into PSR_RECORD (ID,CREATE_DATE,CREATE_USER,ENTITY_STATUS,UPDATE_DATE,UPDATE_USER,VERSION,APPROVERBY,APPROVERTIME,COMMENTS,COUNT,DANWEI,EQUIPTMENT,FACILITY,HAVEATTACHED,HAVEQIANGXIANG,HAVERUOXIANG,ISUPDATED,ISUPLOAD,INPUTTIME,INPUTUSER,INPUTUSERSUOXIE,ISACTIVITYINSPECTION,ISCOMMUNICATION,ISCOMPLIANCE,ISDOCUMENTREVISION,ISWALKDOWN,RESULT,RECORDDESCIPTION,RECORDNO,SENDBACKREASON,PSR_STATUS,TOPIC,TOPICDESC,UPLOADEDTIME,UPDATEDTIME,YAOSUBINHAO,ZHUANGTIBIANHAO) 
   values (v_id,v_create_date,v_create_user,v_entity_status,v_update_date,v_update_user,0,v_approverby,v_approvertime,v_comments,v_count,v_danwei,v_equiptment,v_facility,v_haveattached,v_haveqiangxiang,v_haveruoxiang,v_isupdated,v_isupload,v_inputtime,v_inputuser,v_inputusersuoxie,v_isactivityinspection,v_iscommunication,v_iscompliance,v_isdocumentrevision,v_iswalkdown,v_result,v_recorddesciption,v_recordno,v_sendbackreason,v_psr_status,v_topic,v_topicdesc,v_uploadedtime,v_updatedtime,v_yaosubinhao,v_zhuangtibianhao);
    commit;
 else
    dbms_output.put_line('¸üÐÂ!');
    update psr_record set --id=v_id, 
    create_date = v_create_date, create_user = v_create_user, entity_status = v_entity_status,update_date =v_update_date
    ,update_user = v_update_user,version = v_version , approverby = v_approverby , approvertime = v_approvertime, comments = v_comments, count = v_count,danwei = v_danwei,equiptment=v_equiptment,facility=v_facility,haveattached= v_haveattached,haveqiangxiang=v_haveqiangxiang,haveruoxiang=v_haveruoxiang,isupdated = v_isupdated,ISUPLOAD = v_isupload,inputtime = v_inputtime,inputuser= v_inputuser,inputusersuoxie = v_inputusersuoxie
    ,ISACTIVITYINSPECTION = v_isactivityinspection,ISCOMMUNICATION=v_iscommunication,ISCOMPLIANCE = v_iscompliance,ISDOCUMENTREVISION=v_isdocumentrevision,ISWALKDOWN= v_iswalkdown,RESULT = v_result,RECORDDESCIPTION=v_recorddesciption,RECORDNO=v_recordno,SENDBACKREASON=v_sendbackreason,PSR_STATUS=v_psr_status,TOPIC = v_topic,TOPICDESC = v_topicdesc,UPLOADEDTIME = v_uploadedtime,UPDATEDTIME=v_updatedtime,YAOSUBINHAO= v_yaosubinhao,ZHUANGTIBIANHAO = v_zhuangtibianhao
    where psr_record.recordno = v_recordno;
  end if;
end addrecord;
/
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."ADDRESULT" 
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
) as 
v_count integer;
begin
  select count(*) into v_count from psr_recordresult where recordid = p_recordid and resultno = p_resultno;
  if v_count >0 then
  delete from psr_recordresult where recordid = p_recordid and resultno = p_resultno;
  end if;
  
  Insert into PSR_RECORDRESULT (ID,CREATE_DATE,CREATE_USER,ENTITY_STATUS,UPDATE_DATE,UPDATE_USER,VERSION,CONTENT,ISFH,ISPC,RECORDID,FACTNOS,RESULTNO) 
  values (p_id,p_create_date,p_create_user,p_entity_status,p_update_date,p_update_user,p_version,p_content,p_isfh,p_ispc,p_recordid,p_factnos,p_resultno);
  commit;
  
end addresult;
/
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."ADDUSER" 
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
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."ADDUSERPERMISSIONREL" 
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
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."SHOWALLPERMISSION" 
(
  permissions out permissionpkg.permissioncursor 
) as 
begin
  open permissions for select * from sys_permission; 
end showallpermission;
/
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."SHOWALLUSER" 
(
  users out userpkg.usercursor  
) as 
begin
  open users for  select * from sys_user;
end showalluser;
/
 

  CREATE OR REPLACE PROCEDURE "PRODUCE"."TEST" 
(
  param1 out integer  
) as 
begin
  param1 := 1;
end test;
/
 
