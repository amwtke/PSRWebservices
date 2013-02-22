CREATE OR REPLACE PROCEDURE ADDFILE 
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