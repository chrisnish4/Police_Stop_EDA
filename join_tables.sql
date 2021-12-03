use aws_ps;

create table info_race as
select deduped_stop_info.*, deduped_race.race
from deduped_stop_info
inner join deduped_race on deduped_stop_info.stop_id = deduped_race.stop_id;

select * from info_race;

create table full_ds as 
select info_race.*, deduped_result.result
from info_race
inner join deduped_result on info_race.stop_id = deduped_result.stop_id;

select * from full_ds;