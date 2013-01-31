create or replace
PROCEDURE SHOWALLPERMISSION
(
  permissions out permissionpkg.permissioncursor 
) as 
begin
  open permissions for select * from sys_permission; 
end showallpermission;