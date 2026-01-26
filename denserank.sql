use naveen;
create table denserank(id int, name varchar(12), score int );
insert into denserank values(1, "Naveen", 94),
						    (2, "Naveen", 91),
                            (3, "Naveen", 96),
                            (4, "Naveen", 94),
                            (5, "Naveen", 97),
                            (6, "Naveen", 91);
select * from denserank;
select score, dense_rank() over (order by score desc) as 'Rank' from denserank order by score desc;