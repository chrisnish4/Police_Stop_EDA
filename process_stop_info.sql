use aws_ps;

alter table stop_info_di
	drop column ori,
    drop column agency, 
    drop column intersection, 
    drop column address_block, 
    drop column land_mark,
    drop column address_street,
    drop column highway_exit,
    drop column school_name, 
    drop column beat, 
    drop column pid, 
    drop column perceived_gender,
    drop column gend_nc;
    
alter table stop_info_di
	drop column address_city;
    
create table deduped_stop_info as
select * from stop_info_di where 1 group by stop_id;

select * from deduped_stop_info;