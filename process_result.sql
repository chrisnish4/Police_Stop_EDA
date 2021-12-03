use aws_ps;

alter table result_di
	drop column pid, 
    drop column num_code,
    drop column reult_text;

create table deduped_result as
select * from result_di where 1 group by stop_id;

select * from deduped_result;

