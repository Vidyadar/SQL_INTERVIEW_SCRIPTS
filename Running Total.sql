---running total
select *,
sum(mark)over(order by personid) as Running_total
from persons
order by PersonID
/*
Table values
1	Ram	250.000000
2	Ramesh	350.000000
3	Sujit	150.000000
4	Suresh	400.000000
NULL	NULL	NULL  */