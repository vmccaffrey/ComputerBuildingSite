select * 
from access_level
order by accessID asc;

select * 
from access_level
order by accessID desc;

select * 
from forum
order by forumID asc;

select * 
from forum
order by forumID desc;

select * 
from component_type
order by typeID desc;

select * 
from component c, specs_cpu s
order by c.model desc;

select typeID
from component_type
where typeName = 'GPU';

-- alter table forum add (
-- 	forumTopic varchar(32) not null
-- );
-- 
-- ALTER TABLE forum MODIFY forumName varchar(32) after forumTopic;

create table test (
	id int(2) not null auto_increment,
    thing0 varchar(16) not null,
    thing1 varchar(16) not null,
    thing2 varchar(16) not null,
    thing3 varchar(16) not null,
    
    primary key(id)
);

create table test_linked (
	linkID int(2) references test(id),
    link0 varchar(16) not null,
    link1 varchar(16) not null,
    link2 varchar(16) not null,
    link3 varchar(16) not null,
    
    primary key(linkID)
);

select * 
from test
order by id asc;

select * 
from test_linked
order by linkID asc;

select MAX(id)
from test;

truncate table test_linked;
truncate table test;

drop table test_linked;
drop table test;

truncate table specs_cpu;
truncate table component;


