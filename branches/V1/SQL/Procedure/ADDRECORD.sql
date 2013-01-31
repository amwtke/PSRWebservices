create or replace
PROCEDURE ADDRECORD
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
  
  if vv_count=0 then--or vv_psrrecord_row.id is null or vv_psrrecord_row.uploadedtime is null then
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