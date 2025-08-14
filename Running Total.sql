---running total
select *,
sum(mark)over(order by personid) as Running_total
from persons
order by PersonID