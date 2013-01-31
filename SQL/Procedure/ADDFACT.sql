create or replace
PROCEDURE ADDFACT
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