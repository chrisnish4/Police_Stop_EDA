use aws_ps;

alter table race_di 
	drop column pid;

select * from race_di;

create table deduped_race as
select * from race_di where 1 group by stop_id;

select * from deduped_race; 

select distinct race
from race_di;




select race,
count(case when race = 'White') as white,
count(case when race = 'Hispanic/Latino/a') as hispanic,
count(case when race = 'Black/African American') as black,
count(case when race = 'Native American') as native_american,
count(case when race = 'Asian') as asian,
count(case when race = 'Pacific Islander') as pacific_islander
from race_di
group by race; 