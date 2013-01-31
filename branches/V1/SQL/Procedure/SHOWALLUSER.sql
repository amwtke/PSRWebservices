create or replace
PROCEDURE SHOWALLUSER
(
  users out userpkg.usercursor  
) as 
begin
  open users for  select * from sys_user;
end showalluser;