create or replace
PROCEDURE ADDUSERPERMISSIONREL
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