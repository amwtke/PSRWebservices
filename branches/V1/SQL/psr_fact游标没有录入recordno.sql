declare
       --���Ͷ���
       cursor c_job is select recordno,id from psr_record;
       --����һ���α����v_cinfo c_emp%ROWTYPE ��������Ϊ�α�c_emp�е�һ����������
       c_row c_job%rowtype;
begin
       for c_row in c_job loop 
          update psr_fact set recordno = c_row.recordno where recordid = c_row.id;
       end loop;
end;



--��֤sql
select r.recordno,f.recordno from psr_fact f inner join psr_record r on r.id = f.recordid where f.recordno =r.recordno 