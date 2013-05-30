declare
       --类型定义
       cursor c_job is select recordno,id from psr_record;
       --定义一个游标变量v_cinfo c_emp%ROWTYPE ，该类型为游标c_emp中的一行数据类型
       c_row c_job%rowtype;
begin
       for c_row in c_job loop 
          update psr_recordresult set recordno = c_row.recordno where recordid = c_row.id;
       end loop;
end;


--select * from psr_record r inner join psr_recordresult s on r.id=s.recordid where r.recordno <> s.recordno