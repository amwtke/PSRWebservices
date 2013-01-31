create or replace
PROCEDURE ADDUSER
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