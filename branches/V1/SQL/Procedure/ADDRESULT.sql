create or replace
PROCEDURE ADDRESULT
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