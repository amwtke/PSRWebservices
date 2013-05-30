declare
       --类型定义
       cursor c_job is select recordno,id from psr_record;
       --定义一个游标变量v_cinfo c_emp%ROWTYPE ，该类型为游标c_emp中的一行数据类型
       c_row c_job%rowtype;
begin
       for c_row in c_job loop 
          update psr_fact set recordno = c_row.recordno where recordid = c_row.id;
       end loop;
end;



--验证sql
select r.recordno,f.recordno from psr_fact f inner join psr_record r on r.id = f.recordid where f.recordno =r.recordno 