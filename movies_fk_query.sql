select 
	concat(first_name, " ", last_name) as director, 
	avg(runtime) as average_runtime 
from movie 
inner join director on director_id = director.id 
group by concat(first_name, " ", last_name)
