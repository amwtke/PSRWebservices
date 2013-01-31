create or replace
PROCEDURE ADDPERMISSION
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